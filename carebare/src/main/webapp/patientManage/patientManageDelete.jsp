<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" href="patientManage/patientManage.css" rel="stylesheet">
</head>
<body>
	<c:if test="${result > 0}">
		<script type="text/javascript">
			alert("환자 삭제 완료");
			location.href = "patientManageView.do"
		</script>
	</c:if>
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("환자 삭제 실패");
			location.href = "patientRegView.do"
		</script>
	</c:if>

</body>
</html>