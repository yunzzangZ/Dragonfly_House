package com.house.dragonfly.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@GetMapping(value = "user/login/login")
	public String login() {
		logger.info("로그인폼으로 이동");
		return "user/login/login";
	}
	
}
