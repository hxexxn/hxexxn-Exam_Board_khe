<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>



	<h1>글 상세보기</h1>

	<p>글 제목 : ${dto.b_title} </p>
	<p>글 내용 : ${dto.b_content} </p>
	<p>작성자 : ${dto.b_writer} </p>
	<p>작성일 : ${dto.b_regDate} </p>
	
	<c:if test="${sessionScope.m_id == dto.b_writer}">
	
		<a href="/boardUpdate?b_no=${dto.b_no}">수정</a>
		<a href="/boardDelete?b_no=${dto.b_no}">삭제</a>
		<a href="/boradList">목록</a><br>
	
	</c:if><br>
	
	<c:if test="${sessionScope.m_id != dto.b_writer}">
	
		<a href="/boardList">목록</a><br>
	
	</c:if><br>
	
	<!-- 달려있는 댓글 목록  보기 -->
	
	<div id="commentTest">
	
	</div>

	<!-- 댓글 달기 -->
	
		<p><input type="hidden" name="b_no" value="${dto.b_no}" id="b_no">
		<p>댓글 작성자 : <input type="text" name="c_writer" value="${sessionScope.m_id}" readonly="readonly" id="c_writer"> </p>
		<p>댓글 : <input type="text" name="c_content" id="c_content"></p>
		<p><button type="button" id="commentBtn">등록</button></p>
	
	
	<script type="text/javascript" src="${path}/resources/js/mine.js"></script>
</body>
</html>