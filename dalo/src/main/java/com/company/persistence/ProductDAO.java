package com.company.persistence;

import java.util.List;

import com.company.domain.ProductVO;
import com.company.domain.Criteria2;


public interface ProductDAO {
	public void pcreate(ProductVO vo) throws Exception;
	public ProductVO pread(int bno) throws Exception;
	public void pupdate(ProductVO vo) throws Exception;
	public void pdelete(int bno) throws Exception;
	//public List<BoardVO> listAll() throws Exception;
	public void pupdateCnt(int bno) throws Exception;

	//게시판 페이징 
	/*public List<BoardVO> listPage(int page) throws Exception; */
	
	//게시판 페이징용 Criteria
	public List<ProductVO> plistCriteria(Criteria2 cri) throws Exception;
	
	//토탈카운트를 반환?
	public int pcountPaging(Criteria2 cri) throws Exception;
	
}
