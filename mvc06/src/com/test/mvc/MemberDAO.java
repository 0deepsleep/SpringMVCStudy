/*===================
 	MemberDAO.java
 ===================*/

package com.test.mvc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDAO
{
	private Connection conn;
	
	// 데이터베이스 연결
	public void connect() throws ClassNotFoundException, SQLException
	{
		conn = DBConn.getConnection();
	}
	
	// 데이터베이스 연결 해제
	public void close()
	{
		DBConn.close();
	}
	
	// 멤버 리스트 조회
	public ArrayList<MemberDTO> lists() throws SQLException
	{
		ArrayList<MemberDTO> result = new ArrayList<MemberDTO>();
		
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT ID, PW, NAME, TEL, EMAIL FROM TBL_MEMBERLIST";
		
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next())
		{
			MemberDTO dto = new MemberDTO();
			dto.setId(rs.getString("ID"));
			dto.setPw(rs.getString("PW"));
			dto.setName(rs.getString("NAME"));
			dto.setTel(rs.getString("TEL"));
			dto.setEmail(rs.getString("EMAIL"));
			
			result.add(dto);
		}
		rs.close();
		stmt.close();
		
		return result;
		
	}
	
	// 멤버 데이터 입력
	public int insertQuery(MemberDTO dto) throws SQLException
	{
		int result = 0;
		
		Statement stmt = conn.createStatement();
		
		String sql = String.format("INSERT INTO TBL_MEMBERLIST(ID, PW, NAME, TEL, EMAIL) "
				+ "VALUES('%s', CRYPTPACK.ENCRYPT('%s', '%s'), '%s', '%s', '%s')"
				, dto.getId(), dto.getPw(), dto.getPw(), dto.getName(), dto.getTel(), dto.getEmail());
		
		result = stmt.executeUpdate(sql);
		stmt.close();
		
		return result;
	}
}
