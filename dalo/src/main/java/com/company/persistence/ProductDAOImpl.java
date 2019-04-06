package com.company.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.domain.Criteria2;
import com.company.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace = "mappers.productMapper";
	
	@Override
	public void pcreate(ProductVO vo) throws Exception {
		session.insert(namespace + ".pcreate", vo);
	}
	
	@Override
	public ProductVO pread(int bno) throws Exception{
		return session.selectOne(namespace + ".pread", bno);
	}
	
	@Override
	public void pupdate(ProductVO vo) throws Exception {
		session.update(namespace + ".pupdate", vo);
	}
	
	@Override
	public void pdelete(int bno) throws Exception {
		session.delete(namespace + ".pdelete", bno);
	}
	
	/*
	 * @Override public List<BoardVO> listAll() throws Exception { return
	 * session.selectList(namespace + ".listAll"); }
	 */
	
	@Override
	public void pupdateCnt(int bno) throws Exception {
		session.update(namespace + ".pupdateCnt", bno);
	}
	
	//Criteria 를 적용한 게시판 페이징 조회
		@Override
		public List<ProductVO> plistCriteria(Criteria2 cri) throws Exception {
			return session.selectList(namespace + ".plistCriteria", cri);
		}

		@Override
		public int pcountPaging(Criteria2 cri) throws Exception {
			return session.selectOne(namespace + ".pcountPaging", cri);
		}
}
