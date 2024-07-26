package com.house.dragonfly.admin.pay;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.house.dragonfly.domain.PAYMENT;

@Controller
public class AdminPayController {

    @Autowired
    private PayService payService;

    @GetMapping("/admin/main")
    public ModelAndView adminMain() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("pay/adminMain");
        return mav;
    }

    @GetMapping("/admin/pay/statistic")
    public ModelAndView statistic() {
        List<PAYMENT> stats = payService.statistic();
        ModelAndView mav = new ModelAndView();
        mav.addObject("stats", stats);
        mav.setViewName("pay/statistic");
        return mav;
    }

    

    
    @GetMapping("/admin/pay/payList")
    public ModelAndView payList() {
        List<PAYMENT> payments = payService.payList();
        ModelAndView mav = new ModelAndView();
        mav.addObject("payments", payments);
        mav.setViewName("pay/payList");
        return mav;
    }

    @GetMapping("/admin/pay/payCard")
    public ModelAndView payCard() {
        List<PAYMENT> cardPayments = payService.payCard();
        ModelAndView mav = new ModelAndView();
        mav.addObject("cardPayments", cardPayments);
        mav.setViewName("pay/payCard");
        return mav;
    }

    @GetMapping("/admin/pay/payViewCard")
    public ModelAndView payViewCard(@RequestParam("id") int id) {
        PAYMENT cardPayment = payService.payViewCard(id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("cardPayment", cardPayment);
        mav.setViewName("pay/payViewCard");
        return mav;
    }

    @GetMapping("/admin/pay/payBank")
    public ModelAndView payBank() {
        List<PAYMENT> bankPayments = payService.payBank();
        ModelAndView mav = new ModelAndView();
        mav.addObject("bankPayments", bankPayments);
        mav.setViewName("pay/payBank");
        return mav;
    }

    @GetMapping("/admin/pay/payViewBank")
    public ModelAndView payViewBank(@RequestParam("id") int id) {
        PAYMENT bankPayment = payService.payViewBank(id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("bankPayment", bankPayment);
        mav.setViewName("pay/payViewBank");
        return mav;
    }

    @GetMapping("/admin/pay/refundList")
    public ModelAndView refundList() {
        List<PAYMENT> refunds = payService.refundList();
        ModelAndView mav = new ModelAndView();
        mav.addObject("refunds", refunds);
        mav.setViewName("pay/refundList");
        return mav;
    }

    @GetMapping("/admin/pay/refundView")
    public ModelAndView refundView(@RequestParam("id") int id) {
        PAYMENT refund = payService.refundView(id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("refund", refund);
        mav.setViewName("pay/refundView");
        return mav;
    }
    
    
}