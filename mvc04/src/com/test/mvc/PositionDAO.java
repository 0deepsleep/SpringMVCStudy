/*==========================================
	#12. PositionDAO.java
	- 데이터베이스 액션 처리 클래스.
	- 직위 정보 입출력 / 수정 / 삭제 액션.
	- Connection 객체에 대한 의존성 주입.
	  → setter 메소드 추가. 
===========================================*/

package com.test.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

public class PositionDAO implements IPositionDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	// 인터페이스 메소드 재정의 ---------------------------------------
	// 직위 리스트 전체 출력
	@Override
	public ArrayList<Position> list() throws SQLException
	{
		ArrayList<Position> result = new ArrayList<Position>();
		
		Connection conn = dataSource.getConnection();
		String sql = "SELECT POSITIONID, POSITIONNAME, MINBASICPAY, DELCHECK FROM POSITIONVIEW ORDER BY POSITIONID";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		Position position = null;
		while (rs.next())
		{
			position = new Position();
			position.setPositionId(rs.getString("POSITIONID"));
			position.setPositionName(rs.getString("POSITIONNAME"));
			position.setMinbasicPay(rs.getInt("MINBASICPAY"));
			position.setDelCheck(rs.getInt("DELCHECK"));
			
			result.add(position);
		}
		rs.close();
		stmt.close();
		conn.close();
		
		return result;
	}

	// 직위 데이터 등록(입력, 추가)
	@Override
	public int add(Position position) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		String sql = "INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)" 
		      + "VALUES(POSITIONSEQ.NEXTVAL, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, position.getPositionName());
		pstmt.setInt(2, position.getMinbasicPay());
		result = pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
	}

	// 직위 데이터 제거(삭제)
	@Override
	public int remove(String positionId) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		String sql = "DELETE FROM POSITION WHERE POSITIONID=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(positionId));
		result = pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
	}

	// 직위 데이터 변경(수정)
	@Override
	public int modify(Position position) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		String sql = "UPDATE POSITION SET POSITIONNAME=?, MINBASICPAY=? WHERE POSITIONID=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, position.getPositionName());
		pstmt.setInt(2, position.getMinbasicPay());
		pstmt.setInt(3, Integer.parseInt(position.getPositionId()));
		result = pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	
		return result;
	}

	
}
