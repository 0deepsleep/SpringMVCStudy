<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberUpdate.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
	.card
	{
		margin-top: 30px;
		padding: 30px;
	}
	
	th
	{
		background-color: #F6F6F6;
		width: 30%;
	}
	
	.btn1 
	{
	    text-align: center;
		margin-left: auto;
		margin-right: auto;
		width: 80px;
		height: 40px
	}
	
	.btn2 
	{
	    text-align: center;
		margin-left: auto;
		margin-right: auto;
		width: 80px;
		height: 40px
		color: gray;
	}
	
	*{text-align:left;}
	
</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function()
	{ 
		$("#btn1").click(function()
		{
			
			$("#err").css("display", "none");
			
			if($("#userPwd").val()=="")
			{
				$("#err").css("display", "inline");
				return;
			} 

			$("#memberForm").submit();
			
		});

		
	});
</script>
</head>
<body>

<div class="container">
	<div class="card" >
	  <div class="card-body">
	    <h1>회원정보확인</h1>
	    <div>
	    	<form action="">
		    	<table class="table">
				    <tr>
				      <th>아이디(이메일)</th>
				      <td>test@test.com </td>
				    </tr>
				    <tr>
				      <th>비밀번호</th>
				      <td>
						<div class="input-group" id="memberForm">
							<div>
				      		<input type="password" id="userPwd" name="userPwd" class="form-control" required="required">
				      		</div>
				      	</div>
				      </td>
				    </tr>
				  </table>
				  <!--   <span style="font-style: red;" id="err">비밀번호를 입력해주세요.</span> -->
				    
				</div>
			</form>
				<button type="button" id="btn1" name="btn1" class="btn-primary btn">확인</button>
				<button type="button" id="btn2" name="btn2" class="btn-secondary btn">취소</button>
	    </div>
	  </div>
</div>








</body>
</html>