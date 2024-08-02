package com.house.dragonfly.admin.chat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserChatController {

    @GetMapping("/user/chat")
    public String userChat(Model model) {
        return "admin/chat/chatroom";
    }
}
