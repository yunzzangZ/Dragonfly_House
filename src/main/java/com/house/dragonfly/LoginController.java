package com.house.dragonfly;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.house.dragonfly.domain.MEMBER;

@Controller
public class LoginController {
	
	@Autowired
	
//	login으로 이동
	@GetMapping(value = "loginForm")
	public String login() {
		System.out.println("로그인폼이동");
		return "loginForm";
	}// end

//	회원별로 나타나는지 확인
	@PostMapping(value = "login")
	public String login(HttpServletRequest request,
			HttpServletResponse respone,
			Model model) throws UnsupportedEncodingException {
		System.out.println("회원정보 전달");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
//		session.setAttribute("signIn", signIn);
		String email = request.getParameter("email");
		model.addAttribute("email", email);
		return "member/mypage";
	}// end

}// end
