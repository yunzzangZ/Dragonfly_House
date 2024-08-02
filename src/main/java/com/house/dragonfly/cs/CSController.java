package com.house.dragonfly.cs;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.domain.CS;

@Controller
public class CSController {
	@Inject
	private CSService service;
	
//	mycsAll이동 및 정보 list가져오기
	@GetMapping(value="cs/mycsAll")
	public ModelAndView mycsAll() {
		System.out.println("문의사항 전체");
		List<CS> cslist = service.mycsAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("cslist", cslist);
		mav.setViewName("cs/mycsAll");
		return mav;
	}//end
	
//	mycsSelect이동 및 정보 가져오기
	@GetMapping(value="cs/mycsSelect")
	public ModelAndView mycsSelect(String email) {
		System.out.println(email+"의 문의사항");
		List<CS> csselist = service.mycsSelect(email);
		ModelAndView mav = new ModelAndView();
		mav.addObject("csselist", csselist);
		mav.setViewName("cs/mycsSelect");
		return mav;
	}//end
	
	
//	mycsDetails이동 및 상세보기
	@GetMapping(value="cs/mycsDetails")
	public ModelAndView mycsDetails(int cs_id) {
		System.out.println(cs_id+" 문의사항 상세보기");
		CS cs = service.mycsDetails(cs_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("cs", cs);
		mav.setViewName("cs/mycsDetails");
		return mav;
	}//end
	
//	mycsInsert이동
	@GetMapping(value="cs/mycsInsert")
	public String mycsInsert(String email) {
		System.out.println("문의사항 추가");
		return "cs/mycsInsert";
	}//end
	
//	Insert_post
	@PostMapping(value="cs/csInsert")
	public String csInsert(CS cs) {
		System.out.println("cs Insert");
		service.mycsInsert(cs);
		return "redirect:/cs/mycsSelect?email="+cs.getMember_email();
	}//end
	
//	mycsUpdate이동
	@GetMapping(value="cs/mycsUpdate")
	public ModelAndView mycsUpdate(int cs_id) {
		System.out.println(cs_id+"문의사항 수정");
		ModelAndView mav = mycsDetails(cs_id);
		mav.setViewName("cs/mycsUpdate");
		return mav;
	}//end
	
//	Update_post
	@PostMapping(value="cs/csUpdate")
	public String csUpdate(CS cs) {
		System.out.println("cs Update");
		service.mycsUpdate(cs);
		return "redirect:/cs/mycsSelect?email="+cs.getMember_email();
	}//end
	
//	mycsDelete이동 및 삭제진행
	@GetMapping(value="cs/mycsDelete")
	public String mycsDelete(int cs_id) {
		System.out.println(cs_id+"문의사항 삭제");
		service.mycsDelete(cs_id);
		return "cs/mycsDelete";
	}//end
	
}//end
