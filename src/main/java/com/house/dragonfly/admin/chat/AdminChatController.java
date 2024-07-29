package com.house.dragonfly.admin.chat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminChatController {

    @GetMapping("/admin/chat")
    public String adminChat(Model model) {
        return "admin/chat/adminchatroom";
    }
}
