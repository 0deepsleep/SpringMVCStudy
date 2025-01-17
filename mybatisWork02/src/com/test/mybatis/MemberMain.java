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
public class MemberMain
{
	// mybatis 객체 의존성 자동 주입!! (setter 메소드 정의하지 않아도 됨)
	@Autowired 
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/memberlist.action", method=RequestMethod.GET)
	public String memberList(ModelMap model)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		model.addAttribute("count", dao.count());
		model.addAttribute("list", dao.list());
		
		return "WEB-INF/view/MemberList.jsp";
	}
	
	@RequestMapping(value = "/memberinsert.action", method=RequestMethod.POST)
	public String memberInsert(MemberDTO m)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.add(m);
		
		return "redirect:memberlist.action";
	}
	
	@RequestMapping(value = "/memberdelete.action", method=RequestMethod.GET)
	public String memberDelete(MemberDTO m)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.remove(m);
				
		return "redirect:memberlist.action";
	}

	@RequestMapping(value = "/memberupdateform.action", method=RequestMethod.GET)
	public String memberSearchId(MemberDTO m, ModelMap model)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		model.addAttribute("dto", dao.searchId(m));
		
		
		return "WEB-INF/view/MemberUpdateForm.jsp";
	}
	
	@RequestMapping(value = "/memberupdate.action", method=RequestMethod.POST)
	public String memberUpdate(MemberDTO m)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.update(m);
		
		return "redirect:memberlist.action";
	}
	
}
