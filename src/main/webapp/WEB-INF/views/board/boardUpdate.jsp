<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<h1>글 수정하기</h1>
	
	<form action="boardUpdate" method="post">
		<input type="hidden" value="${dto.b_no}" name="b_no">
		<p>글 제목 : <input type="text" value="${dto.b_title}" name="b_title"> </p>
		<p>글 내용 : <input type="text" value="${dto.b_content}" name="b_content"> </p>
		<p>작성자 : ${dto.b_writer} </p>
		<p>작성일 : ${dto.b_regDate} </p>
	
		<input type="submit" value="수정">
	</form>
	<a href="/boradList">목록</a>
	
</body>
</html>