package org.study.sample.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.study.sample.mapper.BoardMapper;
import org.study.sample.model.BoardDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class BoardMapperTest {

	@Autowired
	private BoardMapper mapper;
	
//	@Test
	public void boardInsertTest() {
		BoardDTO dto = new BoardDTO();
		dto.setB_title("테스트 제목");
		dto.setB_content("테스트 내용");
		dto.setB_writer("test10");
		mapper.boardInsert(dto);
	}
	
//	@Test
	public void boardListTest() {
		List<BoardDTO> list = mapper.boardList();
		
		for(BoardDTO dto : list) {
			log.info(dto);
		}
	}

//	@Test
	public void boadReadTest() {
		BoardDTO dto = mapper.boardRead("1");
		log.info("-------------------------" + dto.toString() + "-------------------------");
		
	}
		

	}

