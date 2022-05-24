package org.study.sample.service;

import java.util.List;

import org.study.sample.model.BoardDTO;

public interface BoardService {
	
	public void boardDelete(String b_no);
	
	public void boardUpdate(BoardDTO dto);
	

	public List<BoardDTO> boardList();
	

	public void boardInsert(BoardDTO dto);
	
	
	public BoardDTO boardRead(String b_no);
	
	
	
}
