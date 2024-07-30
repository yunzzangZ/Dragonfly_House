package com.house.dragonfly.admin.register;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.house.dragonfly.domain.BUSINESS;

@Controller
@RequestMapping("/admin/business")
public class BusinessResController {

    @Autowired
    @Qualifier("businessResServiceImpl")
    private BusinessResService businessService;

    @PostMapping("/register")
    public String registerBusiness(@ModelAttribute BUSINESS business, Model model) {
        businessService.registerBusiness(business);
        model.addAttribute("message", "Business registration successful!");
        return "registerSuccess"; // registerSuccess.jsp 파일을 반환
    }

    @GetMapping("/register")
    public String showRegisterForm() {
        return "buregisterForm"; // buregisterForm.jsp 파일을 반환
    }
}
