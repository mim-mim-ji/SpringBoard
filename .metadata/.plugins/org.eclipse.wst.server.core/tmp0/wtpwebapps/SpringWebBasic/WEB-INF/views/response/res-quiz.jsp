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
	
	<%-- 1. res-quiz 파일의 화면처리를 할 수 있는 매서드를 생성
		 2. 폼 태그의 action URL은 res-login으로 설정
		 아이디와 비밀번호를 사용자에게 입력할 수 있는 창을 제공
		 3. ID : kim123, pw:kkk1234라면 res-quiz-success.jsp로 
		 이동해서 "로그인 성공"  "kim123님 환영합니다" 출력
		 4. 틀렸으면 res-quiz-fail.jsp로 이동해서 "로그인 실패"
		"(입력한 ID)는 회원이 아니거나 비밀번호가 다릅니다 "출력
	 --%>
	 
	 <form action="<c:url value='/response/res-login' />" method="POST">
		<fieldset>
			<legend>회원 가입 양식</legend>
			<p>
				# ID : <input type="text" name="userID" size="10"> <br>
				# PW : <input type="password" name="userPW" size="10"> <br>
				<input type="submit" value="확인">
			</p>
		</fieldset>
	</form>
	 
	 
	
</body>
</html>