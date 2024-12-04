package org.zerock.sevice;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.service.BoardService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class BoardServiceTests {
	@Autowired
	private BoardService service;
	
	@Test
	public void testExist() {
		System.out.println(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 글 내용");
		board.setWriter("newbie");
		
		service.register(board);
		
		System.out.println("생성된 게시물 번호"+ board.getBno());
	}
	
	@Test
	public void testGetList() {
		service.getList().forEach(board -> System.out.println(board));
	}
	
	@Test
	public void testGet() {
		System.out.println(service.get(1));
	}
	
	@Test
	public void testDelete() {
		System.out.println("delete"+ service.remove(2));
	}
	
	@Test
	public void testUpdate() {
		BoardVO board = service.get(1);
		if(board == null) {
			return;
		}
		board.setTitle("제목 수정");
		System.out.println("수정" + service.modify(board));
	}
}
