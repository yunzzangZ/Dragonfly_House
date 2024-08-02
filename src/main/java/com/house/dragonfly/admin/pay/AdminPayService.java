package com.house.dragonfly.admin.pay;

import java.util.List;
import com.house.dragonfly.domain.PAYMENT;

public interface AdminPayService {
    List<PAYMENT> getAllPayments();
    List<PAYMENT> getPaymentsByMethod(String method);
    PAYMENT getPaymentById(int payId);
    List<PAYMENT> getRefundRequests();
    PAYMENT getRefundById(int refundId);
}
