package com.company.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.domain.BoardVO;
import com.company.domain.Criteria;


@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace = "mappers.boardMapper";
	
	@Override
	public void create(BoardVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}
	
	@Override
	public BoardVO read(int bno) throws Exception{
		return session.selectOne(namespace + ".read", bno);
	}
	
	@Override
	public void update(BoardVO vo) throws Exception {
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
		public List<BoardVO> listCriteria(Criteria cri) throws Exception {
			return session.selectList(namespace + ".listCriteria", cri);
		}

		@Override
		public int countPaging(Criteria cri) throws Exception {
			return session.selectOne(namespace + ".countPaging", cri);
		}
}
