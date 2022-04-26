package org.study.sample.service;

import java.util.List;

import org.study.sample.model.BoardDTO;

public interface BoardService {

	public void boardInsert(BoardDTO dto);
	
	public List<BoardDTO> boardList();
	
	public BoardDTO boardRead(String b_no);
	
	public void boardUpdate(BoardDTO dto);
	
	public void boardDelete(String b_no);
}
