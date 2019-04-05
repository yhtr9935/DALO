package com.company.service;

import java.util.List;

import com.company.DTO.LoginDTO;
import com.company.domain.UserVO;

public interface UserService {
	public UserVO login(LoginDTO dto) throws Exception;
	public void regist(UserVO vo) throws Exception;
	public void update(UserVO vo) throws Exception;
	public void delete(UserVO vo) throws Exception;
}
