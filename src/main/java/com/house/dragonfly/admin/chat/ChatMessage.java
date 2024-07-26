package com.house.dragonfly.admin.chat;

public class ChatMessage {
    private String from;
    private String text;
    private String recipient;
    private MessageType type;

    public enum MessageType {
        CHAT,
        JOIN,
        LEAVE
    }

    // Getters and Setters
    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getRecipient() {
        return recipient;
    }

    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }

    public MessageType getType() {
        return type;
    }

    public void setType(MessageType type) {
        this.type = type;
    }
}
