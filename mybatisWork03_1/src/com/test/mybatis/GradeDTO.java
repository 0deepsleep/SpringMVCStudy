/*=====================================
 	GradeDTO.java
 	- 데이터 전송 객체 자료형 클래스(DTO)
    - 성적 데이터 저장 및 전송
======================================*/

package com.test.mybatis;

public class GradeDTO
{	
	// 주요 속성 구성
	private int sid, sub1, sub2, sub3, tot, ch;
	private double avg;
	
	// getter / setter 구성
	public int getSid()
	{
		return sid;
	}
	public void setSid(int sid)
	{
		this.sid = sid;
	}
	public int getSub1()
	{
		return sub1;
	}
	public void setSub1(int sub1)
	{
		this.sub1 = sub1;
	}
	public int getSub2()
	{
		return sub2;
	}
	public void setSub2(int sub2)
	{
		this.sub2 = sub2;
	}
	public int getSub3()
	{
		return sub3;
	}
	public void setSub3(int sub3)
	{
		this.sub3 = sub3;
	}
	public int getTot()
	{
		return tot;
	}
	public void setTot(int tot)
	{
		this.tot = tot;
	}
	public int getCh()
	{
		return ch;
	}
	public void setCh(int ch)
	{
		this.ch = ch;
	}
	public double getAvg()
	{
		return avg;
	}
	public void setAvg(double avg)
	{
		this.avg = avg;
	}
	

	
	
	
}
