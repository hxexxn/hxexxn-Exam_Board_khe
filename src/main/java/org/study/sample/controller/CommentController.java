package org.study.sample.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.study.sample.model.CommentDTO;
import org.study.sample.service.CommentService;

@Controller
public class CommentController {
	
	@Autowired
	private CommentService commentService;
	
	@GetMapping("/commentInsert")
	@ResponseBody
	public String test(CommentDTO dto) {
		
		commentService.commentInsert(dto);

		return "Success";
	}
		
	@GetMapping("/commentList")
	@ResponseBody
	public List<CommentDTO> commentList(@RequestParam("b_no")String b_no) {
		List<CommentDTO> cList = commentService.commentList(b_no);
		return cList;
	}

	@GetMapping("/commentDelete")
	@ResponseBody
	public String commentDelete(@RequestParam("c_no")String c_no) {
		System.out.println(c_no);
		commentService.commentDelete(c_no);
		System.out.println("끝");
		return "Success";
	}
	
}
