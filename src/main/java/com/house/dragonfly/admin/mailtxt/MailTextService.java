package com.house.dragonfly.admin.mailtxt;

import java.util.List;
import com.house.dragonfly.domain.SENDDING_TXT;

public interface MailTextService {
    List<SENDDING_TXT> getAllMailTexts();
    SENDDING_TXT getMailTextById(int mailTxtCode);
    void addMailText(SENDDING_TXT mailText);
    void editMailText(SENDDING_TXT mailText);
    void removeMailText(int mailTxtCode);
}
