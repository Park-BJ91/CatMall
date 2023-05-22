package com.cat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cat.mapper.BoardMapper;
import com.cat.model.BoardVO;
import com.cat.model.Criteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper mapper;

	@Override
	public void enroll(BoardVO VO) throws Exception {
		
		mapper.enroll(VO);
		
	}
	
	@Override
	public List<BoardVO> getList() throws Exception {
		
		
		
		return mapper.getList();
	}
	
	@Override
	public BoardVO detail(int bno) throws Exception {
		
		return mapper.detail(bno);
	}
	
	@Override
	public int modify(BoardVO VO) throws Exception {
		
		return mapper.modify(VO);
	}
	
	@Override
	public int delete(int bno) throws Exception {
	
		return mapper.delete(bno);
	}
	
	@Override
	public List<BoardVO> listPaging(Criteria cri) throws Exception {
		
		return mapper.listPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) throws Exception {
		
		return mapper.getTotal(cri);
	}
	
	
}
