$(function(){
	
	commentList();
	commentDelete(a);
	
})


function commentList(){
	var b_no = $('#b_no').val();
	var c_writer = $('#c_writer').val();
	
	$.ajax({
		url: "/commentList",
		type: "get",
		data: {b_no : b_no},
		success:function(result) {
			var resultCommentList = "<table border='1'><tr><td>작성자</td><td>내용</td><td>삭제</td></tr>"
			$(result).each(function(){

				if (c_writer == this.c_writer) {
					resultCommentList += "<tr><td>" + this.c_writer + "</td><td>" + this.c_content 
										+ "</td><td><button type='button' onclick='commentDelete(" + this.c_no + ")'>삭제</button></td></tr>";
				} else {
					resultCommentList += "<tr><td>" + this.c_writer + "</td><td>" + this.c_content + "</td></tr>";
				}
			})
			resultCommentList += "</table>"
			
			$('#commentTest').html(resultCommentList);
		}
	})

}

	$('#commentBtn').click(function(){

		var b_no = $('#b_no').val();
		var c_writer = $('#c_writer').val();
		var c_content = $('#c_content').val();
		
		$.ajax({
			url: "/commentInsert",
			type: "get",
			data: {b_no : b_no, c_writer : c_writer, c_content : c_content},
			success:function(result){
				if(result == "Success"){
					alert("댓글 등록 성공");
					$('#c_content').val('');
					commentList();
				}
			}
		});
		
	})
	
	
	function commentDelete(c_no){
		$.ajax({
			url: "/commentDelete",
			type: "get",
			data: {c_no : c_no},
			success:function(result){
				if(result == "Success"){
				alert("댓글 삭제 완료");
				$('#commentTest').html('');
				commentList();
				}
			}
		});
	}
	
	
	
	