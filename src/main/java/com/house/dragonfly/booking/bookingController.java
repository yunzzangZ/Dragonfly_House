package com.house.dragonfly.booking;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.domain.BOOKING;
import com.house.dragonfly.domain.RoomVO;
import com.house.dragonfly.room.RoomService;

@Controller
public class bookingController {
	
	@Inject
	private bookingService bookingservice;
	@Autowired
    private RoomService roomservice;
	
//	예약전체이동
	@GetMapping(value = "bookingListAll")
	public ModelAndView bookingListAll() {
		System.out.println("예약전체");
		List<BOOKING> bolist = bookingservice.bookingListAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("bolist", bolist);
		mav.setViewName("booking/bookingListAll");
		return mav;
	}//end
	
//	예약전체_회원별 이동
	@GetMapping(value = "bookingListSelect")
	public ModelAndView bookingListSelect(String email) {
		System.out.println(email+"예약전체_회원별");
		List<BOOKING> boselist = bookingservice.bookingListSelect(email);
		ModelAndView mav = new ModelAndView();
		mav.addObject("boselist", boselist);
		mav.setViewName("booking/bookingListSelect");
		return mav;
	}//end
	
//	예약 상세보기 이동
	@GetMapping(value = "bookingListDetails")
	public ModelAndView bookingListDetails(int bo_num) {
		System.out.println("예약 취소 상세");
		BOOKING bo = bookingservice.bookingListDetails(bo_num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("bo", bo);
		mav.setViewName("booking/bookingListDetails");
		return mav;
	}//end
	
//	예약취소전체_회원별 이동
	@GetMapping(value = "bookingCancleSelect")
	public ModelAndView bookingCancleSelect(String email) {
		System.out.println(email+"예약취소전체_회원별");
		List<BOOKING> bocaselist = bookingservice.bookingCancleSelect(email);
		ModelAndView mav = new ModelAndView();
		mav.addObject("bocaselist", bocaselist);
		mav.setViewName("booking/bookingCancleSelect");
		return mav;
	}//end
	
//	예약취소상세보기 이동
	@GetMapping(value = "bookingCancleDetails")
	public ModelAndView bookingCancleDetails(int bo_num) {
		System.out.println("예약 취소 상세");
		BOOKING bo = bookingservice.bookingListDetails(bo_num);
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
		bookingservice.bookingCancleUpdate(bo_num);
		return "redirect:/bookingListDetails?bo_num="+bo_num;
	}//end
	
//	예약추가 이동
	@GetMapping(value = "bookingInsert")
	public String bookingInsert(int ro_num) {
		System.out.println("예약추가 폼이동");
		RoomVO ro = roomservice.ro_selectOne(ro_num);
        ModelAndView mav = new ModelAndView();
        mav.addObject("ro", ro);
		return "booking/bookingInsert";
	}//end
	
//	예약추가 이동
	@PostMapping(value = "bookingInsert")
	public String bookingInsert(BOOKING bo) {
		System.out.println("예약추가");
		bookingservice.bookingInsert(bo);
		bookingservice.payInsert(bo);
		return "redirect:/bookingListDetails?bo_num="+bo.getBo_num();
	}//end
		

}//end
