package org.study.board;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.study.board.model.BoardVO;
import org.study.board.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
	
public class BoardDAOTest {
	
	@Autowired
	BoardDAO dao;
	private static Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	
	@Test
	public void testCreate() throws Exception{
		BoardVO vo = new BoardVO();
		
		vo.setTitle("°¡³ª Å¸ÀÌÆ²");
		vo.setContent("»õ·Î¿î ÄÁÅÙÃ÷");
		vo.setWriter("±è Ã¶¼ö");
		
		dao.create(vo);
	}
	
	@Test
	public void testRead() throws Exception{
		BoardVO vo = dao.read(1);
		
		System.out.println(vo);
	}
	
	@Test
	public void testUpdate() throws Exception{
		BoardVO vo = dao.read(1);
		
		vo.setTitle("¼öÁ¤ÇÑ Å¸ÀÌÆ²");
		vo.setContent("¼öÁ¤ÇÑ ÄÁÅÙÃ÷");
		vo.setWriter("¼öÁ¤ÇÑ Ã¶¼ö");

	}
	
	@Test 
	public void testDelete() throws Exception{
		dao.delete(1);
	}
	
	@Test
	public void testListAll() throws Exception{
		dao.listAll();
	}
	
	@Test
	public void testListPage() throws Exception{
		int page = 10;
		List<BoardVO> list = dao.listPage(page);
		for(BoardVO vo : list) {
			logger.info(vo.getBno() + ":" + vo.getTitle());
		}
	}
	
}
