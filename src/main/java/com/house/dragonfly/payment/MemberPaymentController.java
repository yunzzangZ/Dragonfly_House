package com.house.dragonfly.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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

//	결제하기_post
	@PostMapping(value = "payment/payInsert")
	public String payInsert(PAYMENT pay) {
		if (pay.getCard_card_number() != null && pay.getCard_card_number().isNaN()) {
	        pay.setCard_card_number(null);
	    }
		mempayservice.payInsert(pay);
		bookingservice.bookingpayUpdate(pay);
		return "redirect:/index";
	}// end

	@GetMapping(value = "payment/payDetails")
	public ModelAndView payDetails(@RequestParam(required = false) Integer booking_bo_num,
			@RequestParam(required = false) Integer pay_id) {
		System.out.println("결제 상세 페이지 이동");

		PAYMENT pay = null;
		ModelAndView mav = new ModelAndView();

		if (booking_bo_num != null) {
			// 예약번호로 결제 상세 정보 가져오기
			pay = mempayservice.payDetails_bo_num(booking_bo_num);
		} else if (pay_id != null) {
			// 결제 ID로 결제 상세 정보 가져오기
			pay = mempayservice.payDetails_pay_id(pay_id);
		} 
		mav.addObject("pay", pay);
		mav.setViewName("payment/payDetails");
		return mav;
	}

//	payScreenUpdate 이동_결제내역 수정
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
		if (pay.getPay_method().equals("신용카드")) {
			mempayservice.payUpdateCard(pay);
			return "redirect:/payment/payDetails?pay_id=" + pay.getPay_id();
		} else if (pay.getPay_method().equals("계좌이체")) {
			mempayservice.payUpdateCash(pay);
			return "redirect:/payment/payDetails?pay_id=" + pay.getPay_id();
		}
		return "redirect:/payment/payDetails?pay_id=" + pay.getPay_id();
	}// end

}// end
