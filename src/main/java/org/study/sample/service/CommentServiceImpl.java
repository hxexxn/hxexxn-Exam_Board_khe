package org.study.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.sample.mapper.CommentMapper;
import org.study.sample.model.CommentDTO;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public void commentInsert(CommentDTO dto) {
		commentMapper.commentInsert(dto);
	}

	@Override
	public List<CommentDTO> commentList(String b_no) {
		return commentMapper.commentList(b_no);
	}

	@Override
	public void commentDelete(String c_no) {
		commentMapper.commentDelete(c_no);
		
	}

	

	
	
}
