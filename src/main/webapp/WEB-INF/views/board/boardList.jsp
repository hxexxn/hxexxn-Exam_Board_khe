<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>



<h1>글 목록</h1>

<a href="boardInsert">작성</a>
<a href="/">메인화면</a><br>

<table border="1">

	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>등록일</td>
	</tr>
	
	<c:forEach var="list" items="${list}">
		
		<tr>
			<td>${list.b_no}</td>
			<td><a href="/boardRead?b_no=${list.b_no}">${list.b_title}</a></td>
			<td>${list.b_writer}</td>
			<td>${list.b_regDate}</td>
		</tr>
	</c:forEach>
		

</table>


</body>
</html>