$(function(){
	
	$('#commentBtn').click(function(){
		
		var commentForm = $('#commentForm');
		var c_content = $('#c_content').val();
		
		$.ajax({
			type: "get",
			url: "/boardRead",
			data: {c_content : c_content},
		});
		
		
	})
	

})