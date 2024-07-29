package com.house.dragonfly.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.booking.bookingService;
import com.house.dragonfly.card.CardService;
import com.house.dragonfly.domain.BOOKING;
import com.house.dragonfly.domain.CARD;
import com.house.dragonfly.domain.PAYMENT;


@Controller
public class MemberPaymentController {
	@Autowired
	private PaymentService payservice;
	@Autowired
	private bookingService boservice;
	@Autowired
	private CardService cardservice;

//	payScrean 이동 및 예약정보 가져오기
	@GetMapping(value = "payment/payScreen")
	public ModelAndView payScreen(int booking_bo_num) {
		System.out.println("payScreen 이동");
		BOOKING bo = boservice.bookingListDetails(booking_bo_num);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("bo", bo);
		mav.setViewName("payment/payScreen");
		return mav;
	}// end
	
	@PostMapping(value = "payment/payInsertUpdate")
	public String payInsert(PAYMENT pay) {
		System.out.println("payInsertUpdate이동");
		System.out.println("방법 : "+pay.getPay_method());
		if(pay.getPay_method().equals("카드")) {
			System.out.println("카드 예약번호 : "+pay.getBooking_bo_num());
			payservice.payInsertUpdate(pay);
		}else{
			System.out.println("현금 예약번호 : "+pay.getBooking_bo_num());
			payservice.payInsertUpdate(pay);
		}
		System.out.println("최종예약번호 : "+pay.getBooking_bo_num());
		payservice.payInsertDone(pay);
		return "redirect:/bookingListDetails?bo_num="+pay.getBooking_bo_num();
	}//end
	
	
//	payDetails_bo_num & payDetails_pay_id이동
	@GetMapping(value = "payment/payDetails")
	public ModelAndView payDetails_bo_num(int booking_bo_num, int pay_id) {
		PAYMENT pay = new PAYMENT();
		ModelAndView mav = new ModelAndView();
		System.out.println("bo_num : "+booking_bo_num +"|pay_id : "+pay_id);
		if(booking_bo_num != 0 && pay_id == 0) {
			pay_id =0;
			pay = payservice.payDetails_bo_num(booking_bo_num);
			mav.addObject("pay", pay);
			mav.setViewName("payment/payDetails");
		}else if(booking_bo_num == 0 && pay_id != 0) {
			booking_bo_num =0;
			pay = payservice.payDetails_pay_id(pay_id);
			mav.addObject("pay", pay);
			mav.setViewName("payment/payDetails");
		}		
		return mav;
	}//end
	
//	payDetails_bo_num 이동
	@GetMapping(value = "payment/booking_bo_num")
	public ModelAndView payDetails_bo_num(int booking_bo_num) {
		PAYMENT pay = new PAYMENT();
		ModelAndView mav = new ModelAndView();
		pay = payservice.payDetails_bo_num(booking_bo_num);
		mav.addObject("pay", pay);
		mav.setViewName("payment/payDetails");
		return mav;
	}//end
	
//	payDetails_pay_id 이동
	@GetMapping(value = "payment/payDetails_pay_id")
	public ModelAndView payDetails_pay_id(int pay_id) {
		PAYMENT pay = new PAYMENT();
		ModelAndView mav = new ModelAndView();
		pay = payservice.payDetails_pay_id(pay_id);
		mav.addObject("pay", pay);
		mav.setViewName("payment/payDetails");
		return mav;
	}//end
	
	

//	payScreenCard이동 및 카드정보 가져오기
	@GetMapping(value = "payment/payScreenCard")
	public ModelAndView payScreenCard(String member_email) {
		System.out.println("payScreenCard 이동");
		ModelAndView mav = new ModelAndView();
		List<CARD> cardlist = cardservice.cardSelect(member_email);
		mav.addObject("cardlist", cardlist);
		mav.setViewName("payment/payScreenCard");
		return mav;
	}// end

//	payScreenCash 이동
	@GetMapping(value = "payment/payScreenCash")
	public String payScreenCash() {
		System.out.println("payScreenCash이동");
		return "payment/payScreenCash";
	}// end
	
//	payScreenUpdate 이동 및 상세보기 & 카드, 현금
	@GetMapping(value = "payment/payScreenUpdate")
	public ModelAndView payScreenUpdate(int pay_id) {
		System.out.println("payScreenUpdate 이동");
		PAYMENT pay = payservice.payDetails_pay_id(pay_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("pay", pay);
		mav.setViewName("payment/payScreenUpdate");
		return mav;
	}// end

//	payUpdate_post
	@PostMapping(value = "payment/payUpdate")
	public String payUpdate(PAYMENT pay) {
		System.out.println("카드, 현금 수정");
		System.out.println("바뀐"+pay.getPay_method());
		if (pay.getPay_method().equals("카드")) {
			payservice.payUpdateCard(pay);
			return "redirect:/payment/payDetails_pay_id?pay_id="+pay.getPay_id();
		} else if (pay.getPay_method().equals("현금")) {
			payservice.payUpdateCash(pay);
			return "redirect:/payment/payDetails_pay_id?pay_id="+pay.getPay_id();
		}
		return "redirect:/payment/payDetails_pay_id?pay_id="+pay.getPay_id();
	}// end

}// end
