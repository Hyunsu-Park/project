package com.health.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.health.mapper.UserMapper;
import com.health.vo.LoginVO;

@Service
public class UserService {
	@Autowired
	UserMapper mapper;
	public Integer userLogin(LoginVO vo) {
		return mapper.userLogin(vo);
	}
}
