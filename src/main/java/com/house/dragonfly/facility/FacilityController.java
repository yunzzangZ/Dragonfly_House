package com.house.dragonfly.facility;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.domain.FacilityVO;

@Controller
public class FacilityController {
	
	@Autowired
	private FacilityService service;
	
	// 전체 숙박시설물 조회
	@GetMapping(value = "fac_listall")
	public ModelAndView fac_listall() {
		System.out.println("전체 숙박 시설물");
		
		List<FacilityVO> list = service.listAll();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("facility/fac_listall");
				
		return mav;	
	}

		//=================
}
