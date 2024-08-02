package com.house.dragonfly.admin.sending;

import com.house.dragonfly.domain.SENDING;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SendingDAOImpl implements SendingDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<SENDING> selectAllSendings() {
        return sqlSession.selectList("com.house.dragonfly.dao.SendingDAO.selectAllSendings");
    }

    @Override
    public List<SENDING> selectSendingsByStatus(String status) {
        return sqlSession.selectList("com.house.dragonfly.dao.SendingDAO.selectSendingsByStatus", status);
    }

    @Override
    public SENDING selectSendingById(int mailTxtCode) {
        return sqlSession.selectOne("com.house.dragonfly.dao.SendingDAO.selectSendingById", mailTxtCode);
    }

    @Override
    public void updateSendingStatus(SENDING sending) {
        sqlSession.update("com.house.dragonfly.dao.SendingDAO.updateSendingStatus", sending);
    }
}
