package com.cat.service;

import java.util.List;

import com.cat.model.BoardVO;
import com.cat.model.Criteria;

public interface BoardService {
	
	public void enroll(BoardVO VO)throws Exception;
	
	public List<BoardVO> getList()throws Exception;
	
	public BoardVO detail(int bno)throws Exception;
	
	public int modify(BoardVO VO)throws Exception;
	
	public int delete(int bno)throws Exception;
	
	public List<BoardVO> listPaging(Criteria cri)throws Exception;
	
	public int getTotal(Criteria cri)throws Exception;

}
