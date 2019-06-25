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
<title>MemberInsertForm.jsp</title>
<link rel="stylesheet" href="<%=cp %>/css/main.css">
<link rel="stylesheet" href="<%=cp %>/css/jquery-ui.css">

<script type="text/javascript" 
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/jquery-ui.js"></script>

<script type="text/javascript">

	$(document).ready(function()
	{
		$("#submitBtn").click(function()
		{
			if ( $("#memberId").val()=="" || $("#memberName").val()==""
					|| $("#memberTel").val()=="" || $("#memberEmail").val()=="")
			{
				$("#err").html("필수 입력 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				return;
			}	
			
			$("#memberForm").submit();
		});
				
	});


</script>

</head>
<body>


<!---------------------------------------------
		MemberInsertForm.jsp
		- 회원 데이터 입력 페이지
----------------------------------------------->

<div>

	<div>
		<c:import url="MemberInsert.jsp"></c:import>
	</div>
	
	<div id="content">
		
		<h1>[ 회원 추가 ]</h1>
		<hr>
		
		<form action="memberinsert.action" method="post" id="memberForm">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" id="memberId" name="id" placeholder="아이디"></td>
			    </tr>
				<tr>
					<th>이름</th>
					<td><input type="text" id="memberName" name="name" placeholder="이름"></td>
			    </tr>
			    <tr>
					<th>전화번호</th>
					<td><input type="text" id="memberTel" name="tel" placeholder="전화번호"></td>
			    </tr>
			    <tr>
					<th>이메일</th>
					<td><input type="text" id="memberEmail" name="email" placeholder="이메일"></td>
			    </tr>
				<tr>
					<td colspan="2" align="center">
						<br><br>
						<button type="button" class="btn" id="submitBtn" style="width: 40%; height: 50%;">회원 추가</button>
						<button type="button" class="btn" id="listBtn" style="width: 40%; height: 50%;"
						onclick="location.href='memberlist.action'">회원 목록</button>
						<br><br>
						<span id="err" style="color: red; font-weight: bold; display: none;"></span>
					</td>
				</tr>
			</table>
			</form>
	</div>


</div>


</body>
</html>