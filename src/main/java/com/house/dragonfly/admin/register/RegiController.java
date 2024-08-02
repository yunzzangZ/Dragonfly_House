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
@RequestMapping("/admin") // 여기서 매핑을 /admin으로 변경
public class RegiController {

    @Autowired
    private RegiService regiService;

    @GetMapping("/register")
    public String showRegisterForm() {
        return "admin/registerForm"; // 뷰 경로를 admin/registerForm으로 변경
    }

    @PostMapping("/register")
    public String registerMember(MEMBER member, Model model, HttpSession session) {
        // 이메일 중복 체크
        if (regiService.isEmailDuplicate(member.getEmail())) {
            model.addAttribute("error", "이미 사용 중인 이메일입니다.");
            return "admin/registerForm"; // 뷰 경로를 admin/registerForm으로 변경
        }

        regiService.insertMember(member);
        return "redirect:/admin/registerSuccess"; // 뷰 경로를 admin/registerSuccess로 변경
    }

    @GetMapping("/registerSuccess")
    public String registerSuccess() {
        return "admin/registerSuccess"; // 뷰 경로를 admin/registerSuccess로 변경
    }
}
