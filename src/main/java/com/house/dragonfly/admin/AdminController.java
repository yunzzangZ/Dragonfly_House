package com.house.dragonfly.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	// 어드민 메인페이지
	@GetMapping(value = "admin/index")
	public String login() {
		logger.info("어드민 메인페이지로 이동");
		return "admin/index";
	}

}
