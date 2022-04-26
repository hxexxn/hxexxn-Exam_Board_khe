<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	${sessionScope.m_id}

	<h1>글 등록</h1>
	
	<form action="/boardInsert" method="post">
	
		<p>글 제목 : <input type="text" name="b_title"> <br>
		<p>글 내용 : <input type="text" name="b_content"> <br>
		<p>작성자 : <input type="text" name="b_writer" value="${sessionScope.m_id}" readonly="readonly"> <br><br>
		<input type="submit" value="작성하기">
	</form>
	
	<a href="/boradList">목록</a>
	
</body>
</html>