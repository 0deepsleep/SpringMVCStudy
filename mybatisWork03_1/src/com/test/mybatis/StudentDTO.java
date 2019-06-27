/*=====================================
 	StudentDTO.java
 	- 데이터 전송 객체 자료형 클래스(DTO)
    - 학생 데이터 저장 및 전송
======================================*/

package com.test.mybatis;

public class StudentDTO
{
	// 주요 속성 구성
	private String name, tel;
	private int sid, sub;
	
	// getter / setter 구성
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getTel()
	{
		return tel;
	}
	public void setTel(String tel)
	{
		this.tel = tel;
	}
	public int getSid()
	{
		return sid;
	}
	public void setSid(int sid)
	{
		this.sid = sid;
	}
	public int getSub()
	{
		return sub;
	}
	public void setSub(int sub)
	{
		this.sub = sub;
	}
	

	

	
	
	
}
