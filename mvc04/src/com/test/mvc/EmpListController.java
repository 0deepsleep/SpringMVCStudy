/*=================================================
 	#30. EmpListController.java
 	- 사용자 정의 컨트롤러 클래스
 	- 리스트 페이지 요청에 대한 액션 처리
 	- DAO 객체에 대한 의존성 주입(DI)을 위한 준비
 	  → 인터페이스 형태의 자료형을 속성으로 구성
 	  → setter 메소드 준비
==================================================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


// ※ Spring 의 『Controller』 인터페이스를 구현하는 방법을 통해
//    사용자 정의 컨트롤러 클래스를 구성한다.
public class EmpListController implements Controller
{
	private IEmployeeDAO dao;
	
	public void setDao(IEmployeeDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드		
		ModelAndView mav = new ModelAndView();
		
		
		ArrayList<Employee> employeeList = new ArrayList<Employee>();
		
		// 세션 처리 과정 추가 --------------------------------------------
		HttpSession session = request.getSession();
		
		if (session.getAttribute("name")==null)
		{
			mav.setViewName("redirect:logout.action");
			return mav;
		}
		// -------------------------------------------- 세션 처리 과정 추가 
		
		
		// 세션 처리에 따른 추가 구성 → 로그인 여부만 확인 → 관리자 확인할 필요 없음
		try
		{
			employeeList = dao.list();
			mav.addObject("employeeList", employeeList);
			
			mav.setViewName("/WEB-INF/view/EmpList.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;

	}

}




