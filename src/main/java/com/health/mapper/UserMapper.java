package com.health.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.health.vo.LoginVO;

@Mapper
public interface UserMapper {
	public Integer userLogin(LoginVO vo);
}
