<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 테스트</title>
</head>
<body>

<h1>회원 가입</h1>
	
	<form action="/memberInsert" method="post" id="memberInsertForm">
	
	
	<p>아이디 : <input type="text" name="m_id" id="m_id"></p>
	<p>비밀번호 : <input type="password" name="m_pw" id="m_pw"></p>
	<p>주소 : <input type="text" name="m_address" id="m_address"></p>
	
	<p><input type="submit" value="회원가입"></p>
	
	</form>

</body>
</html>