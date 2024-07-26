package com.house.dragonfly.admin.chat;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.annotation.SendToUser;
import org.springframework.messaging.simp.annotation.SubscribeMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.messaging.simp.SimpMessagingTemplate;

@Controller
public class ChatController {

    private final SimpMessagingTemplate messagingTemplate;

    public ChatController(SimpMessagingTemplate messagingTemplate) {
        this.messagingTemplate = messagingTemplate;
    }

    @GetMapping("/chat")
    public String chat() {
        return "chat";
    }

    @MessageMapping("/chat.sendMessage")
    public void sendMessage(@Payload ChatMessage chatMessage, @SessionAttribute("email") String email) {
        if (email == null || !email.equals(chatMessage.getFrom())) {
            throw new IllegalArgumentException("Unauthorized user");
        }
        messagingTemplate.convertAndSendToUser(chatMessage.getRecipient(), "/queue/reply", chatMessage);
    }

    @MessageMapping("/chat.addUser")
    public void addUser(@Payload ChatMessage chatMessage, @SessionAttribute("email") String email) {
        if (email == null || !email.equals(chatMessage.getFrom())) {
            throw new IllegalArgumentException("Unauthorized user");
        }
        chatMessage.setType(ChatMessage.MessageType.JOIN);
        messagingTemplate.convertAndSend("/topic/messages", chatMessage);
    }
}
