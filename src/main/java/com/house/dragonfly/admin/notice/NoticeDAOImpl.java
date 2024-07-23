package com.house.dragonfly.admin.notice;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.house.dragonfly.domain.NOTICE;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.house.dragonfly.NoticeMapper";

    @Override
    public List<NOTICE> noticeList() {
        return sqlSession.selectList(namespace + ".noticeList");
    }

    @Override
    public NOTICE noticeView(int notice_id) {
        return sqlSession.selectOne(namespace + ".noticeView", notice_id);
    }

    @Override
    public void noticeAdd(NOTICE notice) {
        sqlSession.insert(namespace + ".noticeAdd", notice);
    }

    @Override
    public void noticeUpdate(NOTICE notice) {
        sqlSession.update(namespace + ".noticeUpdate", notice);
    }

    @Override
    public void noticeDel(int notice_id) {
        sqlSession.delete(namespace + ".noticeDel", notice_id);
    }
}