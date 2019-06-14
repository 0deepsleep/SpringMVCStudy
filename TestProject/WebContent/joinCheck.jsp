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
<title>joinCheck.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
	.bolck
	{
		width: 80px;
	}
	
	.btn
	{
		margin-left: auto;
		margin-right: auto;
		width: 80px;
		height: 40px
	}

	
	#err
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

<div class="text-center container">
	<img src="<%=cp %>/img/cat.png" class="rounded" alt="" >
  <div class="row" style="margin-top: 60px;">
  	<div class="col-md-6- offset-md-3">
  		<div class="input-group" id="memberForm">
	  		<div class="input-group-prepend">
		    	<span class="input-group-text bolck">아이디</span>
		    </div>
		    <input type="text" id="userId" name="userId" class="form-control" value="test@test.com"
		  readonly="readonly" >
		    </div>
		   
		<div class="input-group" id="memberForm">
	  		<div class="input-group-prepend">
		    	<span class="input-group-text bolck">비밀번호</span>
		    </div>
		  	<input type="password" id="userPwd" name="userPwd" class="form-control"
		  required="required" >
		</div>
		<span id="err">패스워드를 입력하세요.</span>


		<br><hr /><br>
		<button type="button" id="btn" name="btn" class="btn-primary btn">확인</button>
		<button type="button" id="btn" name="btn" class="btn-primary btn">취소</button>

		
	</div>
  </div>
</div>

</body>
</html>