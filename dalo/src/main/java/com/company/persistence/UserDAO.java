package com.company.persistence;

import com.company.DTO.LoginDTO;
import com.company.domain.UserVO;
public interface UserDAO {
	public String regdate();
	
	public void insertUser(UserVO vo);
	
	public UserVO readUser(String id) throws Exception;
	public UserVO readWithPW(String id, String pw) throws Exception;
	
	public UserVO login(LoginDTO dto) throws Exception;
	
	public void updateUser(UserVO vo);
	public void deleteUser(UserVO vo);
}
