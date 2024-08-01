package com.house.dragonfly.admin.sending;

import com.house.dragonfly.domain.SENDING;

import java.util.List;

public interface SendingDAO {
    List<SENDING> selectAllSendings();
    List<SENDING> selectSendingsByStatus(String status);
    SENDING selectSendingById(int mailTxtCode);
    void updateSendingStatus(SENDING sending);
}
