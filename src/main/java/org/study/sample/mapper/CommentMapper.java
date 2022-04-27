package org.study.sample.mapper;

import java.util.List;

import org.study.sample.model.CommentDTO;

public interface CommentMapper {

		public void commentInsert(CommentDTO dto);

		public List<CommentDTO> commentList(String b_no);
		
		public void commentDelete (String c_no);
		
		
}
