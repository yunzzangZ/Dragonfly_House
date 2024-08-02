package com.house.dragonfly.admin.sending;

import com.house.dragonfly.domain.SENDING;

import java.util.List;

public interface SendingService {
    List<SENDING> getAllSendings();
    List<SENDING> getSendingsByStatus(String status);
    SENDING getSendingById(int mailTxtCode);
    void updateSendingStatus(SENDING sending);
    void sendReservationEmail(String to, String subject, String text);
}
