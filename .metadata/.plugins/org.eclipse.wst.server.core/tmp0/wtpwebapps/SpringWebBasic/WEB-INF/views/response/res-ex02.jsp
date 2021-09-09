<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="<c:url value='/response/join' />" method="POST">
		<fieldset>
			<legend>회원 가입 양식</legend>
			<p>
				# ID : <input type="text" name="userID" size="10"> <br>
				# PW : <input type="password" name="userPW" size="10"> <br>
				# NAME : <input type="text" name="userNAME" size="10"> <br>
				# HOBBY : 
				<input type="checkbox" name="hobby" value="soccer">축구 &nbsp;
				<input type="checkbox" name="hobby" value="book">독서 &nbsp;
				<input type="checkbox" name="hobby" value="music">음악감상 &nbsp;
				<br>
				<input type="submit" value="확인">
			</p>
		</fieldset>
	</form>

</body>
</html>