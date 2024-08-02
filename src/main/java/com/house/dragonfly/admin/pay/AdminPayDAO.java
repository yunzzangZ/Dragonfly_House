package com.house.dragonfly.admin.pay;

import java.util.List;
import com.house.dragonfly.domain.PAYMENT;

public interface AdminPayDAO {
    List<PAYMENT> selectAllPayments();
    List<PAYMENT> selectPaymentsByMethod(String method);
    PAYMENT selectPaymentById(int payId);
    List<PAYMENT> selectRefundRequests();
    PAYMENT selectRefundById(int refundId);
}
