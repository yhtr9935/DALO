package com.company.service;

import java.util.List;

import com.company.domain.Criteria2;
import com.company.domain.ProductVO;

public interface ProductService {
	public void pregist(ProductVO vo) throws Exception;

	public ProductVO pread(int bno) throws Exception;
	
	public void pmodify(ProductVO vo) throws Exception;
	
	public void premove(int bno) throws Exception;
	
	//public List<ProductVO> listAll() throws Exception;
	
	public List<ProductVO> plistCriteria(Criteria2 cri) throws Exception;
	public int plistCountCriteria(Criteria2 cri) throws Exception;
}
