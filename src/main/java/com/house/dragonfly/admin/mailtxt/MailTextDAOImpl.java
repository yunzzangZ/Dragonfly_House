package com.house.dragonfly.admin.mailtxt;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.house.dragonfly.domain.SENDDING_TXT;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.house.dragonfly.domain.SENDDING_TXT;

@Repository
public class MailTextDAOImpl implements MailTextDAO {

    @Autowired
    private SqlSession sqlSession;

    private static final String NAMESPACE = "com.house.dragonfly.admin.mailtxt.MailTextDAO";

    @Override
    public List<SENDDING_TXT> selectAllMailTexts() {
        return sqlSession.selectList(NAMESPACE + ".selectAllMailTexts");
    }

    @Override
    public SENDDING_TXT selectMailTextById(int mailTxtCode) {
        return sqlSession.selectOne(NAMESPACE + ".selectMailTextById", mailTxtCode);
    }

    @Override
    public void insertMailText(SENDDING_TXT mailText) {
        sqlSession.insert(NAMESPACE + ".insertMailText", mailText);
    }

    @Override
    public void updateMailText(SENDDING_TXT mailText) {
        sqlSession.update(NAMESPACE + ".updateMailText", mailText);
    }

    @Override
    public void deleteMailText(int mailTxtCode) {
        sqlSession.delete(NAMESPACE + ".deleteMailText", mailTxtCode);
    }
}