<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	System.out.println("새로운 회원을 더 추가하시겠습니까?");
	response.sendRedirect("memberlist.action");
%>