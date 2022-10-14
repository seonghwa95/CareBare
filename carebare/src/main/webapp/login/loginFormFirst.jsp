<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://kit.fontawesome.com/54a6153010.js" crossorigin="anonymous"></script>
<%   String context = request.getContextPath();%> 
<script type="text/javascript" src="<%=context %>/js/jquery.js"></script>
<link type="text/css" rel="stylesheet" href="<%=context %>/login/login.css" >
<script type="text/javascript">
	$(document).ready(function(){
		location.href="<%=context%>/autoLogin.do";
		});
</script>
</head>
<body>
	<!-- 전체 박스 -->
	<div class="log_box">
		<span class="title">
			<h1>
				<i class="fa-solid fa-hand-holding-medical"></i>
				CareBare
			</h1>
		</span>
		<!-- 이미지 or 텍스트 사이트 이름 -->
		<!-- 로그인 박스 -->
		<form action="<%=context %>/loginPro.do" method="get">
			<input type="text" class="id" id="doctor_no" name="doctor_no" placeholder="사번" required="required"><p>
			<input type="password" class="id" id="password" name="password" placeholder="암호" required="required"><p>
			<input type="submit" class="log" id="chk" value="로그인"><p>
			<label>
				<input type="checkbox" class="auto_log" name="auto_log" value="auto">
				로그인 상태 유지
			</label>
			<hr>
			<span class="ment">
				사번이나 암호를 잊었을 때는, <a href="<%=context %>/login/loginForget.jsp">여기</a>를 눌러주세요.
			</span><p>
			<span class="ment">
				회원가입은 <a href="<%=context%>/login/join.jsp">여기</a>에서 할 수 있습니다.
			</span><p>
			<span class="ment" id="login_not">
			</span>
		</form>
	</div>
</body>
</html>