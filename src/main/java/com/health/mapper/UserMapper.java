package com.health.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.health.vo.LoginVO;
import com.health.vo.UserInfoVO;

@Mapper
public interface UserMapper {
	public Integer userLogin(LoginVO vo);
	public UserInfoVO selectUserInfo(String id);
}
