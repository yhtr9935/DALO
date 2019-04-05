package com.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.DTO.LoginDTO;
import com.company.domain.BoardVO;
import com.company.domain.UserVO;
import com.company.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService{
	@Inject
	private UserDAO dao;
	
	@Override
	public UserVO login(LoginDTO dto) throws Exception{
		return dao.login(dto);
	}
	@Override
	public void regist(UserVO vo) throws Exception {
		dao.insertUser(vo);
	}
	
	@Override
	public void update(UserVO vo) throws Exception {
		dao.updateUser(vo);
	}
	
	@Override
	public void delete(UserVO vo) throws Exception {
		dao.deleteUser(vo);
	}
}
