package com.house.dragonfly.admin.pay;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.house.dragonfly.domain.PAYMENT;

@Repository
public class PayDAOImpl implements PayDAO {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.house.dragonfly.PayMapper";

    @Override
    public List<PAYMENT> statistic() {
        return sqlSession.selectList(namespace + ".statistic");
    }

    @Override
    public List<PAYMENT> payList() {
        return sqlSession.selectList(namespace + ".payList");
    }

    @Override
    public List<PAYMENT> payCard() {
        return sqlSession.selectList(namespace + ".payCard");
    }

    @Override
    public PAYMENT payViewCard(int id) {
        return sqlSession.selectOne(namespace + ".payViewCard", id);
    }

    @Override
    public List<PAYMENT> payBank() {
        return sqlSession.selectList(namespace + ".payBank");
    }

    @Override
    public PAYMENT payViewBank(int id) {
        return sqlSession.selectOne(namespace + ".payViewBank", id);
    }

    @Override
    public List<PAYMENT> refundList() {
        return sqlSession.selectList(namespace + ".refundList");
    }

    @Override
    public PAYMENT refundView(int id) {
        return sqlSession.selectOne(namespace + ".refundView", id);
    }
}