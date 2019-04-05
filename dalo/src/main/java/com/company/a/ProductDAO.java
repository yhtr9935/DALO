package com.company.persistence;

import java.util.List;

import com.company.domain.ProductVO;
import com.company.domain.Criteria;


public interface ProductDAO {
	public void create(ProductVO vo) throws Exception;
	public ProductVO read(int bno) throws Exception;
	public void update(ProductVO vo) throws Exception;
	public void delete(int bno) throws Exception;
	//public List<BoardVO> listAll() throws Exception;
	public void updateCnt(int bno) throws Exception;

	//게시판 페이징 
	/*public List<BoardVO> listPage(int page) throws Exception; */
	
	//게시판 페이징용 Criteria
	public List<ProductVO> listCriteria(Criteria cri) throws Exception;
	
	//토탈카운트를 반환?
	public int countPaging(Criteria cri) throws Exception;
	
}
