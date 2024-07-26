package com.house.dragonfly.admin.register;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.house.dragonfly.domain.MEMBER;
import com.house.dragonfly.user.LoginService;

@Controller
public class RegiController {

    @Autowired
    private RegiService regiService;
    
    @Autowired
    private LoginService loginService;

    @GetMapping("/register")
    public String showRegisterForm() {
        return "registerForm"; // registerForm.jsp 뷰를 가리킵니다.
    }

    @PostMapping("/register")
    public String registerMember(MEMBER member, Model model) {
        regiService.insertMember(member);
        model.addAttribute("member", member);
        return "index"; // registerSuccess.jsp 뷰를 가리킵니다.
    }
    
    @GetMapping("/login")
    public String showLoginForm() {
    	 return "user/login/login"; 
    }

    @PostMapping("/login")
    public String login(String email, String password, Model model) {
        Map<String, Object> loginInfo = new HashMap<>();
        loginInfo.put("email", email);
        loginInfo.put("password", password);
        Map<String, Object> user = loginService.login(loginInfo);
        
        if (user != null) {
            model.addAttribute("user", user);
            return "index"; 
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "user/login/login"; 
        }
    }
}
