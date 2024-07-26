package com.house.dragonfly.admin.pay;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.house.dragonfly.domain.PAYMENT;

@Service
public class PayServiceImpl implements PayService {

    @Autowired
    private PayDAO payDAO;

    @Override
    public List<PAYMENT> statistic() {
        return payDAO.statistic();
    }

    @Override
    public List<PAYMENT> payList() {
        return payDAO.payList();
    }

    @Override
    public List<PAYMENT> payCard() {
        return payDAO.payCard();
    }

    @Override
    public PAYMENT payViewCard(int id) {
        return payDAO.payViewCard(id);
    }

    @Override
    public List<PAYMENT> payBank() {
        return payDAO.payBank();
    }

    @Override
    public PAYMENT payViewBank(int id) {
        return payDAO.payViewBank(id);
    }

    @Override
    public List<PAYMENT> refundList() {
        return payDAO.refundList();
    }

    @Override
    public PAYMENT refundView(int id) {
        return payDAO.refundView(id);
    }
}