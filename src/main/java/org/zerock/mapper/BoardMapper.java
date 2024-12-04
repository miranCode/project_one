package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.zerock.domain.BoardVO;

@Mapper
public interface BoardMapper {
	public List<BoardVO> getList();
	
	public void insert(BoardVO board);
	
	public void insertSelectKey(BoardVO board);
	
	public BoardVO read(int bno);
	
	public int delete(int bno);
	
	public int update(BoardVO board);
	
}
