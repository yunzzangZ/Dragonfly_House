package com.house.dragonfly.admin.pay;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.mybatis.spring.SqlSessionTemplate;
import com.house.dragonfly.domain.PAYMENT;

@Repository
public class AdminPayDAOImpl implements AdminPayDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public List<PAYMENT> selectAllPayments() {
        return sqlSession.selectList("com.house.dragonfly.admin.pay.AdminPayDAO.selectAllPayments");
    }

    @Override
    public List<PAYMENT> selectPaymentsByMethod(String method) {
        return sqlSession.selectList("com.house.dragonfly.admin.pay.AdminPayDAO.selectPaymentsByMethod", method);
    }

    @Override
    public PAYMENT selectPaymentById(int payId) {
        return sqlSession.selectOne("com.house.dragonfly.admin.pay.AdminPayDAO.selectPaymentById", payId);
    }

    @Override
    public List<PAYMENT> selectRefundRequests() {
        return sqlSession.selectList("com.house.dragonfly.admin.pay.AdminPayDAO.selectRefundRequests");
    }

    @Override
    public PAYMENT selectRefundById(int refundId) {
        return sqlSession.selectOne("com.house.dragonfly.admin.pay.AdminPayDAO.selectRefundById", refundId);
    }
}
