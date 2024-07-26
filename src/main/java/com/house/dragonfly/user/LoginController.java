package com.house.dragonfly.user;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.domain.MEMBER;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Inject
	LoginService loginService;

	@GetMapping(value = "user/login/login")
	public String login() {
		logger.info("로그인폼으로 이동");
		return "user/login/login";
	}

//	@GetMapping("user/login/user/login/login") // 중복 url
//	public String redirectToLogin() {
//		return "redirect:/user/login/login";
//	}

	@PostMapping(value = "user/login/login")
	public String login(@RequestParam Map<String, Object> map, HttpSession session) {
		logger.info("요청정보 받아서 보내기");

		Map email = loginService.login(map);

		if (email == null) { // 로그인 실패
			logger.info("로그인 실패");	
			return "redirect:/user/login/login";
		} else { // 로그인 성공
			session.setAttribute("email", email);
			return "redirect:/index";
		}
	}

	@GetMapping(value = "user/login/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}

}