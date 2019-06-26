<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberUpdateForm.jsp</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

<div>
	<h1>회원 정보 수정</h1>
	<hr>
</div>

<div id="content">
	<form action="memberupdate.action" method="post" id="memberForm">
		<table>
			<tr>
				<th>MID</th>
				<td>
					<input name="mid" type="text" id="name" value="${dto.mid}" />
				</td>
			</tr>
			<tr>
				<th>NAME</th>
				<td>
					<input type="text" name="name" id="name" value="${dto.name}" />
				</td>
			</tr>
			<tr>
				<th>TELEPHONE</th>
				<td>
					<input type="text" name="telephone" id="telephone" value="${dto.telephone}" />
				</td>
			</tr>

		</table>
		<button type="submit" class="btn btn-default btn-xs btnUpdate" id="submitBtn" >수정</button>		
	
	</form>
</div>

</body>
</html>