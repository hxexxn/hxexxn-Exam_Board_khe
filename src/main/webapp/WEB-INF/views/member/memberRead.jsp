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
	
	<p> 회원 아이디 : ${dto.m_id} </p>
	<p> 회원 주소 : ${dto.m_address} </p>
	<p> 회원 등록일 : <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${dto.m_regDate}"/> </p>
		
	<a href="/memberUpdate?m_no=${dto.m_no}">정보 수정</a>
	<a href="/">홈으로</a><br>
</body>
</html>