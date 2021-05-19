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

@RestController
public class UserAPIController {
	@Autowired
	UserService service;
	@PostMapping("/user/login")
	public Map<String, String> getUserLogin(@RequestBody LoginVO vo, HttpSession session) {
		Map<String, String> resultMap = new HashMap<>();

		System.out.println(vo.getId());
		Integer result = service.userLogin(vo);

		if( result == 1) {
			resultMap.put("status","success");
			resultMap.put("message","로그인 되었습니다.");
			session.setAttribute("user", vo.getId());
		}
		else {
			resultMap.put("status","failed");
			resultMap.put("message","아이디 또는 비밀번호가 다릅니다.");
		}
			
		return resultMap;
	}
}
