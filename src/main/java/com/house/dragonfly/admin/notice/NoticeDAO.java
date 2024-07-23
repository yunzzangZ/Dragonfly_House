package com.house.dragonfly.admin.notice;


import java.util.List;
import com.house.dragonfly.domain.NOTICE;

public interface NoticeDAO {
    List<NOTICE> noticeList();
    NOTICE noticeView(int notice_id);
    void noticeAdd(NOTICE notice);
    void noticeUpdate(NOTICE notice);
    void noticeDel(int notice_id);
}