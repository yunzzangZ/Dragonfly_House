package com.house.dragonfly.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.admin.pay.PayService;
import com.house.dragonfly.booking.bookingService;
import com.house.dragonfly.card.CardService;
import com.house.dragonfly.domain.BOOKING;
import com.house.dragonfly.domain.CARD;
import com.house.dragonfly.domain.PAYMENT;


@Controller
public class MemberPaymentController {
	@Autowired
	private PaymentService mempayservice;
	@Autowired
	private bookingService bookingservice;
	@Autowired
	private CardService cardservice;
	@Autowired
	private PayService adminpayservice;
	
//	payAll 전체보기_임시
	@GetMapping(value = "payAll")
	public String payAll() {
		List<PAYMENT> paylist = adminpayservice.payList();
        ModelAndView mav = new ModelAndView();
        mav.addObject("paylist", paylist);
		return "payment/payAll";
	}//end
	
//	payScrean(결제하기) 이동 및 예약정보 가져오기
	@GetMapping(value = "payment/payScreen")
	public ModelAndView payScreen(int booking_bo_num) {
		System.out.println("payScreen 이동");
		ModelAndView mav = new ModelAndView();
		BOOKING bo = bookingservice.bookingListDetails(booking_bo_num);
		mav.addObject("bo", bo);
		List<CARD> cardlist = cardservice.cardSelect(bo.getMember_email());
		mav.addObject("cardlist", cardlist);
		mav.setViewName("payment/payScreen");
		return mav;
	}// end
	
	@PostMapping(value = "payment/payInsert")
	public String payInsert(PAYMENT pay) {
		System.out.println("payInsert이동");
		System.out.println("방법 : "+pay.getPay_method());
		mempayservice.payInsert(pay);
		return "redirect:/bookingListDetails?bo_num="+pay.getBooking_bo_num();
	}//end
	
//	payDetails_bo_num 이동
	@GetMapping(value = "payment/payDetails_bo_num")
	public ModelAndView payDetails_bo_num(int booking_bo_num) {
		PAYMENT pay = new PAYMENT();
		ModelAndView mav = new ModelAndView();
		pay = mempayservice.payDetails_bo_num(booking_bo_num);
		mav.addObject("pay", pay);
		mav.setViewName("payment/payDetails_bo_num");
		return mav;
	}//end
	
//	payDetails_pay_id 이동
	@GetMapping(value = "payment/payDetails_pay_id")
	public ModelAndView payDetails_pay_id(int pay_id) {
		PAYMENT pay = new PAYMENT();
		ModelAndView mav = new ModelAndView();
		pay = mempayservice.payDetails_pay_id(pay_id);
		mav.addObject("pay", pay);
		mav.setViewName("payment/payDetails_pay_id");
		return mav;
	}//end
	
//	payScreenUpdate 이동 및 상세보기 & 카드, 현금
	@GetMapping(value = "payment/payScreenUpdate")
	public ModelAndView payScreenUpdate(int pay_id) {
		System.out.println("payScreenUpdate 이동");
		PAYMENT pay = mempayservice.payDetails_pay_id(pay_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("pay", pay);
		mav.setViewName("payment/payScreenUpdate");
		return mav;
	}// end

//	payUpdate_post
	@PostMapping(value = "payment/payUpdate")
	public String payUpdate(PAYMENT pay) {
		System.out.println("카드, 현금 수정");
		if (pay.getPay_method().equals("신용카드")) {
			mempayservice.payUpdateCard(pay);
			return "redirect:/payment/payDetails_pay_id?pay_id="+pay.getPay_id();
		} else if (pay.getPay_method().equals("계좌이체")) {
			mempayservice.payUpdateCash(pay);
			return "redirect:/payment/payDetails_pay_id?pay_id="+pay.getPay_id();
		}
		return "redirect:/payment/payDetails_pay_id?pay_id="+pay.getPay_id();
	}// end

}// end
