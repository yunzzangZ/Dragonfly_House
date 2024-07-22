package com.house.dragonfly.booking;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.domain.BOOKING;

@Controller
public class bookingController {
	
	@Inject
	private bookingService service;
	
//	예약전체이동
	@GetMapping(value = "bookingListAll")
	public ModelAndView bookingListAll() {
		System.out.println("예약전체");
		List<BOOKING> bolist = service.bookingListAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("bolist", bolist);
		mav.setViewName("booking/bookingListAll");
		return mav;
	}//end
	
//	예약전체_회원별 이동
	@GetMapping(value = "bookingListSelect")
	public ModelAndView bookingListSelect(String email) {
		System.out.println(email+"예약전체_회원별");
		List<BOOKING> boselist = service.bookingListSelect(email);
		ModelAndView mav = new ModelAndView();
		mav.addObject("boselist", boselist);
		mav.setViewName("booking/bookingListSelect");
		return mav;
	}//end
	
//	예약 상세보기 이동
	@GetMapping(value = "bookingListDetails")
	public ModelAndView bookingListDetails(int bo_num) {
		System.out.println("예약 취소 상세");
		BOOKING bo = service.bookingListDetails(bo_num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("bo", bo);
		mav.setViewName("booking/bookingListDetails");
		return mav;
	}//end
	
//	예약취소전체_회원별 이동
	@GetMapping(value = "bookingCancleSelect")
	public ModelAndView bookingCancleSelect(String email) {
		System.out.println(email+"예약취소전체_회원별");
		List<BOOKING> bocaselist = service.bookingCancleSelect(email);
		ModelAndView mav = new ModelAndView();
		mav.addObject("bocaselist", bocaselist);
		mav.setViewName("booking/bookingCancleSelect");
		return mav;
	}//end
	
//	예약취소상세보기 이동
	@GetMapping(value = "bookingCancleDetails")
	public ModelAndView bookingCancleDetails(int bo_num) {
		System.out.println("예약 취소 상세");
		BOOKING bo = service.bookingListDetails(bo_num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("bo", bo);
		mav.setViewName("booking/bookingCancleDetails");
		return mav;
	}//end
	
	
//	예약취소요청 이동_get
	@GetMapping(value = "bookingCancleUpdate")
	public ModelAndView bookingCancleUpdate(int bo_num) {
		System.out.println("예약취소요청 폼이동");
		ModelAndView mav = bookingCancleDetails(bo_num);
		mav.setViewName("booking/bookingCancleUpdate");
		return mav;
	}//end
	
//	예약취소요청_post
	@PostMapping(value = "bocaUpdate")
	public String bocaUpdate(int bo_num) {
		System.out.println("예약취소요청 update");
		service.bookingCancleUpdate(bo_num);
		return "redirect:/bookingListDetails?bo_num="+bo_num;
	}//end
	
	
}//end
