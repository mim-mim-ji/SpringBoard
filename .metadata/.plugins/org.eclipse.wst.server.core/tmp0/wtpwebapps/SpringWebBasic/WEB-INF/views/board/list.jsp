<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${articles.size()<=0 }" >
		<p>게시글이 존재하지 않습니다</p>
	</c:if>

	<c:if test="${articles.size()>0 }">

		<h2>게시글 목록</h2>

		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>비고</th>
			</tr>

			<!-- 컨트롤러가 가져온 게시글 데이터를 반복문을 이용하여 출력
			만일 게시글 개수가 0개일 경우 목록 대신 "게시물이 존재하지 않습니다"출력
			비고 란에서는 [삭제]글만 써 놓기
			번호는 varStatus를 사용하여 인덱스 +1한 값을 매겨주기
			게시글 작성할 수 있는 링크를 하나 달기
			 -->

			<c:forEach var="article" items="${articles}" varStatus="Num">
				<tr>
					<td>${Num.index+1}</td>
					<td>
						<a href="<c:url value='/board/content?boardNo=${Num.index+1}'/>">${article.title}</a>
					</td>
					<td>${article.writer}</td>
					<td>
						<a href="<c:url value='/board/delete?boardNo=${Num.index+1}'/>" onclick="return confirm('정말 삭제하시겠습니까?')">[삭제]</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	<a href="<c:url value='/board/write' />" >게시글 작성하기</a>


</body>
</html>