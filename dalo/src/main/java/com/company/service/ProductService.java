package com.company.service;

import java.util.List;

import com.company.domain.Criteria;
import com.company.domain.ProductVO;

public interface ProductService {
	public void regist(ProductVO vo) throws Exception;

	public ProductVO read(int bno) throws Exception;
	
	public void modify(ProductVO vo) throws Exception;
	
	public void remove(int bno) throws Exception;
	
	//public List<BoardVO> listAll() throws Exception;
	
	public List<ProductVO> listCriteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
}
