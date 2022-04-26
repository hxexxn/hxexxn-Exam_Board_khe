<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>회원 정보 수정</h1>
	
	<form action="/memberUpdate" method="post">
		<input type="hidden" value="${dto.m_no}" name="m_no">
		<p> 회원 아이디 : <input type="text" name="m_id" value="${dto.m_id}"> </p>
		<p> 회원 주소 : <input type="text" name="m_address" value="${dto.m_address}"> </p>
		<p> 회원 등록일 : <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${dto.m_regDate}"/> </p>
		<input type="submit" value="정보 수정하기">
	</form>
	
	<a href="/memberList">목록으로</a><br>
</body>
</html>