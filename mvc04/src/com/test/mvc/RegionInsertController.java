/*===================================================================
 	EmployeeInsertController.java
 	- 사용자 정의 컨트롤러 클래스
 	- 직원 정보 입력 액션 수행 후 employeelist.action 재요청 안내
 	- DAO 객체에 대한 의존성 주입(DI)을 위한 준비
 	  → 인터페이스 형태의 자료형을 속성으로 구성
 	  → setter 메소드 준비
===================================================================*/

package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


// ※ Spring 의 『Controller』 인터페이스를 구현하는 방법을 통해
//    사용자 정의 컨트롤러 클래스를 구성한다.
public class RegionInsertController implements Controller
{
	private IRegionDAO dao;
	
	public void setDao(IRegionDAO dao)
	{
		this.dao = dao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드
		ModelAndView mav = new ModelAndView();

		// 데이터 수신 → RegionInsertForm.jsp 로 부터
		String regionName = request.getParameter("regionName");
		
		try
		{
			Region region = new Region();
			
			region.setRegionName(regionName);

			dao.add(region);
			
			mav.setViewName("redirect:regionlist.action");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;

	}

}




