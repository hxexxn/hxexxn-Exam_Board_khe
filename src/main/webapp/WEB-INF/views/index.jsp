<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sapmle Project Page</title>
<link rel="stylesheet" href="${path}/resources/css/mine.css">
</head>
<body>


<c:if test="${not empty sessionScope.m_id}">

	${sessionScope.m_id}님. 환영합니다.<br>
	
	<a href="/memberList">회원 보러가기</a><br>
	
	<a href="/logout">로그아웃</a><br>
	
	<a href="/boardList">글 목록</a><br>

</c:if>

<c:if test="${empty sessionScope.m_id}">

	<h3>로그인</h3>
	
	<br><a href="/memberInsert">회원 등록하기</a><br>
	
	<form action="/login" method="post">
		<p>아이디 : <input type="text" name="m_id"></p>
		<p>비밀번호 : <input type="password" name="m_pw"></p>
		<input type="submit" value="로그인">
	</form>


</c:if>


<script type="text/javascript">

<c:if test="${msg eq false}">

	alert('로그인 실패.');

</c:if>


</script>

</body>
</html>