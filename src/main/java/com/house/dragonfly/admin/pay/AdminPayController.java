package com.house.dragonfly.admin.pay;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.house.dragonfly.domain.PAYMENT;

@Controller
@RequestMapping("/admin/pay")
public class AdminPayController {

    @Autowired
    private AdminPayService adminPayService;

    @GetMapping("/payList")
    public String payList(Model model) {
        model.addAttribute("payments", adminPayService.getAllPayments());
        return "admin/pay/payList";
    }

    @GetMapping("/payCard")
    public String payCard(Model model) {
        model.addAttribute("payments", adminPayService.getPaymentsByMethod("카드"));
        return "admin/pay/payCard";
    }

    @GetMapping("/payViewCard")
    public String payViewCard(@RequestParam("payId") int payId, Model model) {
        PAYMENT payment = adminPayService.getPaymentById(payId);
        payment.setPay_date(convertStringToDate(payment.getPay_date()));  // 날짜 변환 메서드 호출
        model.addAttribute("payment", payment);
        return "admin/pay/payViewCard";
    }

    @GetMapping("/payBank")
    public String payBank(Model model) {
        model.addAttribute("payments", adminPayService.getPaymentsByMethod("계좌입금"));
        return "admin/pay/payBank";
    }

    @GetMapping("/payViewBank")
    public String payViewBank(@RequestParam("payId") int payId, Model model) {
        PAYMENT payment = adminPayService.getPaymentById(payId);
        payment.setPay_date(convertStringToDate(payment.getPay_date()));  // 날짜 변환 메서드 호출
        model.addAttribute("payment", payment);
        return "admin/pay/payViewBank";
    }

    @GetMapping("/refundList")
    public String refundList(Model model) {
        model.addAttribute("refunds", adminPayService.getRefundRequests());
        return "admin/pay/refundList";
    }

    @GetMapping("/refundView")
    public String refundView(@RequestParam("refundId") int refundId, Model model) {
        PAYMENT payment = adminPayService.getRefundById(refundId);
        payment.setPay_date(convertStringToDate(payment.getPay_date()));  // 날짜 변환 메서드 호출
        model.addAttribute("refund", payment);
        return "admin/pay/refundView";
    }

    private String convertStringToDate(String dateString) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date = sdf.parse(dateString);
            return sdf.format(date);
        } catch (Exception e) {
            e.printStackTrace();
            return dateString; // 원래 문자열을 반환하여 에러를 방지
        }
    }
}

