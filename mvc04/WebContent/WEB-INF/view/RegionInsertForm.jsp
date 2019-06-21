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
<title>RegionInsertForm.jsp</title>
<link rel="stylesheet" href="<%=cp %>/css/main.css">
<link rel="stylesheet" href="<%=cp %>/css/jquery-ui.css">

<script type="text/javascript" 
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/jquery-ui.js"></script>


<script type="text/javascript">

	$(document).ready(function()
	{
	
		// 지역 추가 버튼이 클릭되었을 때 수행해야 할 코드 처리			
		$("#submitBtn").click(function()
		{
			// 데이터 검사(공란이 있는지 여부 검사)
			if( $("#regionName").val()=="")
			{
				$("#err").html("필수 입력 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				return;		//-- submit 액션 처리 중단
			} 
			
			// 폼 submit 액션 처리 수행
			$("#regionForm").submit();
			
			
		});
		
		
	});


</script>


</head>
<body>

<!---------------------------------------------
		#35. RegionInsertForm.jsp
		- 지역 데이터 입력 페이지
----------------------------------------------->

<div>

	<!-- 메뉴 영역 -->
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>

	<!-- 콘텐츠 영역 -->
	<!-- DB에 Submit 시켜야하기 때문에 form 태그 있어야 함 -->
	<div id="content">
		
		<h1>[지역 추가]</h1>
		<hr>
		
		<form action="regioninsert.action" method="post" id="regionForm">
			<table>
				<tr>
					<th>지역명</th>
					<td>
						<input type="text" id="regionName" name="regionName" placeholder="지역명" />
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<br><br>
						<button type="button" class="btn" id="submitBtn" 
						style="width: 40%; height: 50%;">지역 추가</button>
						<button type="button" class="btn" id="listBtn" style="width: 40%; hegiht: 50%;" 
						onclick="location.href='regionlist.action'">지역 리스트</button>
						<br><br>
						<span id="err" style="color: red; font-wegiht:bold; display: none;"></span>
					</td>
				</tr>				
			</table>
		</form>
	</div>
	
</div>



</body>
</html>