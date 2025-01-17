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
<title>Login.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
	.bolck
	{
		width: 80px;
	}
	
	.btn
	{
		width: 540px;
		height: 60px
	}

	
	#err1
	{
		display: none;
		color: red;
		font-size: small;
	}
	
	#err2
	{
		display: none;
		color: red;
		font-size: small;
	}
	*{text-align:left;}
	
</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function()
	{ 
		$("#btn").click(function()
		{
		
			if($("#userId").val()=="" && $("#userPwd").val()=="")
			{
				$("#err1").css("display", "inline");
				$("#err2").css("display", "inline");
				return;
			}
			
			$("#err1").css("display", "none");
			
			if($("#userId").val()=="")
			{
				$("#err1").css("display", "inline");
				return;
			} 
			
			$("#err2").css("display", "none");
			
			if( $("#userPwd").val()=="")
			{
				$("#err2").css("display", "inline");
				return;
			}
			
			$("#memberForm").submit();
			
		});

		
	});
</script>

</head>
<body>

<div class="text-center container">
	<img src="<%=cp %>/img/cat.png" class="rounded" alt="logo" style="margin-top: 60px;">
  <div class="row" style="margin-top: 60px;">
  	<div class="col-md-6 offset-md-3">
  		<div class="input-group" id="memberForm">
	  		<div class="input-group-prepend">
		    	<span class="input-group-text bolck">아이디</span>
		    </div>
		  <input type="text" id="userId" name="userId" class="form-control" 
		  required="required" placeholder="test@test.com">
		    </div>
		    <span class="glyphicon glyphicon-exclamation-sign" id="err1">아이디를 입력해주세요.</span><br>
		   
		<div class="input-group" id="memberForm">
	  		<div class="input-group-prepend" style="">
		    	<span class="input-group-text bolck">비밀번호</span>
		    </div>
		  	<input type="password" id="userPwd" name="userPwd" class="form-control"
		  required="required" >
		</div>
		<span class="glyphicon glyphicon-exclamation-sign" id="err2">비밀번호를 입력해주세요.</span>
		<br><input type="checkbox" style="width: 20px;">자동로그인

		<br><br>
		<div class="input-group-prepend">
		<button type="button" id="btn" name="btn" class="btn-primary btn">로그인</button>
		</div>
		
		<br><hr />
		
		<div style="text-align: center;">
				<a href="#"> 아이디 찾기 |</a>
				<a href="#"> 비밀번호 찾기 |</a>
				<a href="#"> 회원가입</a>
		</div>
	</div>
  </div>
</div>

</body>
</html>