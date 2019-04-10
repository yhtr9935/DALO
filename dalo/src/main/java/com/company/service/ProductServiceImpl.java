package com.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.domain.Criteria;
import com.company.domain.Criteria2;
import com.company.domain.ProductVO;
import com.company.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {
	@Inject
	private ProductDAO dao;
	@Override
	public void pregist(ProductVO vo) throws Exception {
		dao.pcreate(vo);
	}
	@Override
	public ProductVO pread(int bno) throws Exception {
		dao.pupdateCnt(bno);
		return dao.pread(bno);
	}
	@Override
	public void pmodify(ProductVO vo) throws Exception {
		dao.pupdate(vo);
	}

	@Override
	public void premove(int bno) throws Exception {
		dao.pdelete(bno);
	}
	/*
	@Override 
	public List<ProductVO> listAll() throws Exception { 
		return dao.listAll(); 
	}
	*/
	 
	@Override
	public List<ProductVO> plistCriteria(Criteria2 cri) throws Exception {
		return dao.plistCriteria(cri);
	}

	@Override
	public int plistCountCriteria(Criteria2 cri) throws Exception {
		return dao.pcountPaging(cri);
	}
}
