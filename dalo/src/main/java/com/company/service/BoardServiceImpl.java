package com.company.service;

import java.util.List;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.domain.BoardVO;
import com.company.domain.Criteria;
import com.company.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	private BoardDAO dao;
	@Override
	public void regist(BoardVO vo) throws Exception {
		dao.create(vo);
	}
	@Override
	public BoardVO read(int bno) throws Exception {
		dao.updateCnt(bno);
		return dao.read(bno);
	}
	@Override
	public void modify(BoardVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void remove(int bno) throws Exception {
		dao.delete(bno);
	}
	/*
	 * @Override public List<BoardVO> listAll() throws Exception { return
	 * dao.listAll(); }
	 */
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}
	

	
}
