package com.house.dragonfly.admin.sending;

import com.house.dragonfly.domain.SENDING;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SendingServiceImpl implements SendingService {

    @Autowired
    private SendingDAO sendingDAO;

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
}
