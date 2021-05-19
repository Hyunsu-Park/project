package com.health.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	@GetMapping("/user/login")
	public String getUserLogin() {
		return "/user/login";
	}
	@GetMapping("/user/logout")
	public String getUserLogout(HttpSession session) {
		
		session.removeAttribute("id");
		session.invalidate();
		
		return "/user/login";
	}
}
