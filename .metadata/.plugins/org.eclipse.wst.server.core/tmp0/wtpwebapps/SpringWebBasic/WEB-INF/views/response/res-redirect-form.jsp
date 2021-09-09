<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ResponseController사용 -->
	<form method="POST">
		<p>
			# ID : <input type="text" name="userID" size="10"><br>
			# 비밀번호 : <input type="password" name="userPW" size="10"><br>
			# 비밀번호확인 : <input type="password" name="userPwChk" size="10"><br>
			<input type="submit" value="로그인">
		</p>
	</form>
	
	<p style="color:red">
		${msg}
	</p>

</body>
</html>