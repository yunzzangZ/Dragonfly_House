package com.house.dragonfly.admin.notice;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.house.dragonfly.domain.NOTICE;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeDAO noticeDAO;

    @Override
    public List<NOTICE> noticeList() {
        return noticeDAO.noticeList();
    }

    @Override
    public NOTICE noticeView(int notice_id) {
        return noticeDAO.noticeView(notice_id);
    }

    @Override
    public void noticeAdd(NOTICE notice) {
        noticeDAO.noticeAdd(notice);
    }

    @Override
    public void noticeUpdate(NOTICE notice) {
        noticeDAO.noticeUpdate(notice);
    }

    @Override
    public void noticeDel(int notice_id) {
        noticeDAO.noticeDel(notice_id);
    }
}