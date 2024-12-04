package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board) {
		System.out.println(board);
		mapper.insertSelectKey(board);
	};
	
	@Override
	public List<BoardVO> getList(){
		return mapper.getList() ;
	};
	
	@Override
	public BoardVO get(int bno) {
		return mapper.read(bno);
	};
	
	@Override
	public boolean modify(BoardVO board) {
		return mapper.update(board) == 1;
	};
	
	@Override
	public boolean remove(int bno) {
		return mapper.delete(bno) == 1;
	};
	
}
