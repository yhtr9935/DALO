package com.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.domain.Criteria;
import com.company.domain.ProductVO;
import com.company.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {
	@Inject
	private ProductDAO dao;
	@Override
	public void regist(ProductVO vo) throws Exception {
		dao.create(vo);
	}
	@Override
	public ProductVO read(int bno) throws Exception {
		dao.updateCnt(bno);
		return dao.read(bno);
	}
	@Override
	public void modify(ProductVO vo) throws Exception {
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
	public List<ProductVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}
}
