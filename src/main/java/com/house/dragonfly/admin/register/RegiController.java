package com.house.dragonfly.admin.register;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.house.dragonfly.domain.MEMBER;

@Controller
@RequestMapping("/user")
public class RegiController {

    @Autowired
    private RegiService regiService;

    @GetMapping("/signupU")
    public String showRegisterForm() {
        return "admin/registerForm";
    }

    @PostMapping("/signupU")
    public String registerMember(MEMBER member, Model model, HttpSession session) {
        if (regiService.isEmailDuplicate(member.getEmail())) {
            model.addAttribute("error", "이미 사용 중인 이메일입니다.");
            return "admin/registerForm";
        }

        member.setAdmin_check("N"); // 기본값 설정
        regiService.insertMember(member);
        return "redirect:/user/registerSuccess";
    }

    @GetMapping("/registerSuccess")
    public String registerSuccess() {
        return "admin/registerSuccess";
    }
}
