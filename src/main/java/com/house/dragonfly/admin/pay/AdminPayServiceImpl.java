package com.house.dragonfly.admin.pay;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.house.dragonfly.domain.PAYMENT;
import com.house.dragonfly.admin.pay.AdminPayDAO;

@Service
public class AdminPayServiceImpl implements AdminPayService {

    @Autowired
    private AdminPayDAO adminPayDAO;

    @Override
    public List<PAYMENT> getAllPayments() {
        return adminPayDAO.selectAllPayments();
    }

    @Override
    public List<PAYMENT> getPaymentsByMethod(String method) {
        return adminPayDAO.selectPaymentsByMethod(method);
    }

    @Override
    public PAYMENT getPaymentById(int payId) {
        return adminPayDAO.selectPaymentById(payId);
    }

    @Override
    public List<PAYMENT> getRefundRequests() {
        return adminPayDAO.selectRefundRequests();
    }

    @Override
    public PAYMENT getRefundById(int refundId) {
        return adminPayDAO.selectRefundById(refundId);
    }
}
