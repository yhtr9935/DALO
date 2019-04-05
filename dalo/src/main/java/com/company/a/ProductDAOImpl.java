package com.company.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.domain.Criteria;
import com.company.domain.ProductVO;


public class ProductDAOImpl implements ProductDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace = "mappers.productMapper";
	
	@Override
	public void create(ProductVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}
	
	@Override
	public ProductVO read(int bno) throws Exception{
		return session.selectOne(namespace + ".read", bno);
	}
	
	@Override
	public void update(ProductVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}
	
	@Override
	public void delete(int bno) throws Exception {
		session.delete(namespace + ".delete", bno);
	}
	
	/*
	 * @Override public List<BoardVO> listAll() throws Exception { return
	 * session.selectList(namespace + ".listAll"); }
	 */
	
	@Override
	public void updateCnt(int bno) throws Exception {
		session.update(namespace + ".updateCnt", bno);
	}
	
	//Criteria 를 적용한 게시판 페이징 조회
		@Override
		public List<ProductVO> listCriteria(Criteria cri) throws Exception {
			return session.selectList(namespace + ".listCriteria", cri);
		}

		@Override
		public int countPaging(Criteria cri) throws Exception {
			return session.selectOne(namespace + ".countPaging", cri);
		}
}
