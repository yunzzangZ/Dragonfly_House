package com.house.dragonfly.admin.chat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChatLoginController {

    @GetMapping("/login")
    public String login(Model model) {
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam String username, @RequestParam String password, Model model) {
        if ("admin".equals(username)) {
            model.addAttribute("username", username);
            return "redirect:/admin/chat";
        } else {
            model.addAttribute("username", username);
            return "redirect:/user/chat";
        }
    }
}