package com.house.dragonfly.admin.pay;

import java.util.List;
import com.house.dragonfly.domain.PAYMENT;

public interface PayService {
    List<PAYMENT> statistic();
    List<PAYMENT> payList();
    List<PAYMENT> payCard();
    PAYMENT payViewCard(int id);
    List<PAYMENT> payBank();
    PAYMENT payViewBank(int id);
    List<PAYMENT> refundList();
    PAYMENT refundView(int id);
}