/*===================================
 	ReceiveController.java
 	- 사용자 정의 컨트롤러 클래스
====================================*/

package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


// ※ Spring 의 『Controller』 인터페이스를 구현하는 방법을 통해
//    사용자 정의 컨트롤러 클래스를 구성한다.
public class ReceiveController implements Controller
{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드
		
		ModelAndView mav = new ModelAndView();
		
		// UTF-8 설정
		request.setCharacterEncoding("UTF-8");	
		
		// 받아온 이름
		String userName = (String)request.getParameter("userName");
		
		mav.addObject("userName", userName);
		mav.setViewName("/WEB-INF/view/Receive.jsp");
		
		return mav;

	}

}




