package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTests {
	
	@Autowired
	private BoardMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(board -> System.out.println(board));
	}
	
	@Test
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setTitle("���� �ۼ��ϴ� ��");
		board.setContent("���� �ۼ��ϴ� �� ����");
		board.setWriter("newbie");
		
		mapper.insert(board);
		
		System.out.println(board);
	}
	
	@Test
	public void testInsertSelectKey() {
		BoardVO board = new BoardVO();
		board.setTitle("���� �ۼ��ϴ� �� SelectKey");
		board.setContent("���� �ۼ��ϴ� �� ���� SelectKey");
		board.setWriter("newbie");
		
		mapper.insert(board);
		
		System.out.println(board);
	}
	
	@Test
	public void testRead() {
		BoardVO board = mapper.read(5);
		System.out.println(board);
	}
	
	@Test
	public void testDelete() {
		System.out.println("delete" + mapper.delete(3));
	}
	
	@Test
	public void testUpdate() {
		BoardVO board = new BoardVO();
		board.setBno(5);
		board.setTitle("����");
		board.setContent("����");
		board.setWriter("����");
		
		int count = mapper.update(board);
		System.out.println("update"+ count);
		
	}
}
