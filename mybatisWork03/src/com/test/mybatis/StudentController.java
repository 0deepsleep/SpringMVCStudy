/*========================
 	MemberMain.java
 	- 컨트롤러 
=========================*/

package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController
{
	// salSession 을 활용하여 mybatis 객체 의존성 (자동) 주입
	@Autowired 
	private SqlSession sqlSession;
	
	// 매개변수를 정의하는 과정에서 매개변수 목록에 적혀있는
	// 클래스의 객체 정보는 스프링이 제공한다.
	
	// 사용자의 요청 주소와 메소드를 매핑하는 과정 필요
	// @RequestMapping(value="요청주소", method="전송방식")
	// 이 때, 전송 방식은 submit 액션인 경우만 POST
	// 나머지 모든 전송 방식은 GET 으로 처리한다.	
	@RequestMapping(value = "/studentlist.action", method=RequestMethod.GET)
	public String studentList(ModelMap model)
	{
		String result = null;
		
		IStudentDAO dao = sqlSession.getMapper(IStudentDAO.class);
		
		model.addAttribute("count", dao.count());
		model.addAttribute("list", dao.list());
		
		result = "WEB-INF/view/StudentList.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/studentinsertform.action", method=RequestMethod.GET)
	public String studentInsertForm()
	{
		String result = null;
		
		result = "WEB-INF/view/St  udentInsertForm.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/studentinsert.action", method=RequestMethod.POST)
	public String studentInsert(StudentDTO student) 
	{
		IStudentDAO dao = sqlSession.getMapper(IStudentDAO.class);
		
		dao.add(student);
		
		//-- 별도의 뷰 페이지 만들지 않고 주소 재지정함
		return "redirect:studentlist.action";

	}
	
	
	@RequestMapping(value = "/gradelist.action", method=RequestMethod.GET)
	public String gradeList(ModelMap model) 
	{
		String result = null;
		
		IGradeDAO dao = sqlSession.getMapper(IGradeDAO.class);
		
		model.addAttribute("count", dao.count());
		model.addAttribute("list", dao.list());
		
		result = "WEB-INF/view/GradeList.jsp";
		
		return result;

	}
	
	@RequestMapping(value = "/gradeinsertform.action", method=RequestMethod.GET)
	public String gradeInsertForm()
	{
		String result = null;
		
		result = "WEB-INF/view/GradeInsertForm.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/gradeinsert.action", method=RequestMethod.POST)
	public String gradeInsert(GradeDTO grade) 
	{
		IGradeDAO dao = sqlSession.getMapper(IGradeDAO.class);
		
		dao.add(grade);
		
		//-- 별도의 뷰 페이지 만들지 않고 주소 재지정함
		return "redirect:gradelist.action";
	}

	
}
