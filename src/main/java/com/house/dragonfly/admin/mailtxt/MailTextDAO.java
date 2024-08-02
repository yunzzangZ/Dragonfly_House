package com.house.dragonfly.admin.mailtxt;

import java.util.List;
import com.house.dragonfly.domain.SENDDING_TXT;

public interface MailTextDAO {
    List<SENDDING_TXT> selectAllMailTexts();
    SENDDING_TXT selectMailTextById(int mailTxtCode);
    void insertMailText(SENDDING_TXT mailText);
    void updateMailText(SENDDING_TXT mailText);
    void deleteMailText(int mailTxtCode);
}