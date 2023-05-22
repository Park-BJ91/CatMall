package com.cat.mapper;

import java.util.List;

import com.cat.model.BoardVO;
import com.cat.model.Criteria;

public interface BoardMapper {
	
	public void enroll(BoardVO VO);
	
	public List<BoardVO> getList();
			
	public BoardVO detail(int bno);
	
	public int modify(BoardVO VO);
	
	public int delete(int bno);
	
	public List<BoardVO> listPaging(Criteria cri);
	
	public int getTotal(Criteria cri);

}
 