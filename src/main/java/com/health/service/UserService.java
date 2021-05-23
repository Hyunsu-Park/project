package com.health.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.health.mapper.UserMapper;
import com.health.vo.LoginVO;
import com.health.vo.UserInfoVO;

@Service
public class UserService {
	@Autowired
	UserMapper mapper;
	public Integer userLogin(LoginVO vo) {
		return mapper.userLogin(vo);
	}
	public UserInfoVO selectUserInfo(String id) {
		return mapper.selectUserInfo(id);
	}
}
