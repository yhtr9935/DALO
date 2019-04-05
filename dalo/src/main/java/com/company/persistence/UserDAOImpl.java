package com.company.persistence;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.DTO.LoginDTO;

import com.company.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "mappers.userMapper";

	@Override
	public String regdate() {
		return sqlSession.selectOne(namespace+".regdate");
	}

	@Override
	public void insertUser(UserVO vo) {
		sqlSession.insert(namespace+".insertUser",vo);
		
	}

	@Override
	public UserVO readUser(String id) throws Exception {
		return (UserVO) sqlSession.selectOne(namespace + ".selectUser", id);
	}

	@Override
	public UserVO readWithPW(String id, String pw) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("id", id);
		paramMap.put("pw", pw);
		return sqlSession.selectOne(namespace + ".readWithPW", paramMap);
	}
	
	@Override
	public UserVO login(LoginDTO dto) throws Exception{
		return sqlSession.selectOne(namespace + ".login", dto);
	}
	
	@Override
	public void updateUser(UserVO vo) {
		sqlSession.update(namespace + ".updateUser",vo);
	}
	
	@Override
	public void deleteUser(UserVO vo) {
		sqlSession.delete(namespace + ".deleteUser",vo);
	}
}
