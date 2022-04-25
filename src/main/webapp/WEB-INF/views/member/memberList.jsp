<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 테스트</title>
</head>
<body>


	<h1>회원 목록</h1>
	
	<a href="/">홈으로</a><br>
	<table border="1">
		<tr>
			<td>회원 번호 </td>
			<td>회원 아이디</td>
			<td>회원 비밀번호 </td>
			<td>회원 주소 </td>
			<td>회원 등록일 </td>
			<td>삭제하기 </td>
		</tr>
		
	<c:forEach var="list" items="${list}">
		
		<tr>
			<td>${list.m_no}</td>
			<td><a href="/memberRead?m_no=${list.m_no}">${list.m_id}</a></td>
			<td>${list.m_pw}</td>
			<td>${list.m_address}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${list.m_regDate}"/></td>
			<td><a href="/memberDelete?m_no=${list.m_no}">삭제</a>
		</tr>
	</c:forEach>
	</table>

	


</body>
</html>