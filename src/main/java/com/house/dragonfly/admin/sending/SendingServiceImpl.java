package com.house.dragonfly.admin.sending;

import com.house.dragonfly.domain.SENDING;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SendingServiceImpl implements SendingService {

    @Autowired
    private SendingDAO sendingDAO;
    @Autowired
    private JavaMailSender mailSender;
    
    @Override
    public List<SENDING> getAllSendings() {
        return sendingDAO.selectAllSendings();
    }

    @Override
    public List<SENDING> getSendingsByStatus(String status) {
        return sendingDAO.selectSendingsByStatus(status);
    }

    @Override
    public SENDING getSendingById(int mailTxtCode) {
        return sendingDAO.selectSendingById(mailTxtCode);
    }

    @Override
    public void updateSendingStatus(SENDING sending) {
        sendingDAO.updateSendingStatus(sending);
    }
    

    @Override
    public void sendReservationEmail(String to, String subject, String text) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(to);
            message.setSubject(subject);
            message.setText(text);
            message.setFrom("parkwasabi@naver.com");
            mailSender.send(message);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
