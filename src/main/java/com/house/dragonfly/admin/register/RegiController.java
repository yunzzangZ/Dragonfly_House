package com.house.dragonfly.admin.register;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.house.dragonfly.domain.MEMBER;

@Controller
public class RegiController {

    @Autowired
    private RegiService regiService;

    @GetMapping("/register")
    public String showRegisterForm() {
        return "registerForm";
    }

    @PostMapping("/register")
    public String registerMember(MEMBER member, Model model, HttpSession session) {
        // 이메일 중복 체크
        if (regiService.isEmailDuplicate(member.getEmail())) {
            model.addAttribute("error", "이미 사용 중인 이메일입니다.");
            return "registerForm";
        }

        regiService.insertMember(member);
        return "redirect:/registerSuccess"; // 회원가입 성공 페이지로 리디렉션
    }

    // registerSuccess 경로 매핑 추가
    @GetMapping("/registerSuccess")
    public String registerSuccess() {
        return "registerSuccess"; // registerSuccess 뷰 반환
    }
}