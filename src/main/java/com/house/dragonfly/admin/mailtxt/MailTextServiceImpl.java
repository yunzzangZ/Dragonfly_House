package com.house.dragonfly.admin.mailtxt;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.house.dragonfly.admin.mailtxt.*;
import com.house.dragonfly.domain.SENDDING_TXT;

@Service
public class MailTextServiceImpl implements MailTextService {

    @Autowired
    private MailTextDAO mailTextDAO;

    @Override
    public List<SENDDING_TXT> getAllMailTexts() {
        return mailTextDAO.selectAllMailTexts();
    }

    @Override
    public SENDDING_TXT getMailTextById(int mailTxtCode) {
        return mailTextDAO.selectMailTextById(mailTxtCode);
    }

    @Override
    public void addMailText(SENDDING_TXT mailText) {
        mailTextDAO.insertMailText(mailText);
    }

    @Override
    public void editMailText(SENDDING_TXT mailText) {
        mailTextDAO.updateMailText(mailText);
    }

    @Override
    public void removeMailText(int mailTxtCode) {
        mailTextDAO.deleteMailText(mailTxtCode);
    }
}