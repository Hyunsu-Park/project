package com.health.api;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.health.service.UserService;
import com.health.vo.LoginVO;
import com.health.vo.UserInfoVO;

@RestController
public class UserAPIController {
	@Autowired
	UserService service;
	@PostMapping("/user/login")
	public Map<String, String> getUserLogin(@RequestBody LoginVO vo, HttpSession session, String id) {
		Map<String, String> resultMap = new HashMap<>();
		
		UserInfoVO userInfo = service.selectUserInfo(vo.getId());

		// System.out.println(vo.getId());
		Integer result = service.userLogin(vo);

		if( result == 1) {
			resultMap.put("status","success");
			resultMap.put("message",vo.getId()+ "님 반갑습니다.");
			session.setAttribute("user", vo.getId());
			session.setAttribute("type", userInfo.getUi_type()); 	// 세션에 타입도 추가해주려고 함
		}
		else {
			resultMap.put("status","failed");
			resultMap.put("message","아이디 또는 비밀번호가 다릅니다.");
		}
			
		return resultMap;
	}
}
