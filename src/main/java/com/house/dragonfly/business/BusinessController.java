package com.house.dragonfly.business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.house.dragonfly.domain.BusinessVO;

@Controller
public class BusinessController {

	@Autowired
	private BusinessService service;

	// 전체사원조회 listAlll > "listAll"
	@GetMapping(value = "bu_listall")
	public ModelAndView bu_listall() {
		System.out.println("전체 사원");

		List<BusinessVO> list = service.listAll();

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("business/bu_listall");

		return mav;
	}

	// 상세로 보자
	@GetMapping(value = "selectOne")
	public ModelAndView selectOne(String bu_email) {
		System.out.println(bu_email + "사업자 회원 선택");

		BusinessVO bu = service.selectOne(bu_email);

		ModelAndView mav = new ModelAndView();
		mav.addObject("bu", bu);
		mav.setViewName("business/bu_selectOne");

		return mav;
	}

	// 추가로 이동을 하고
	@GetMapping(value = "insert")
	public String insertForm(Model model) {
		model.addAttribute("BusinessVO", new BusinessVO());
		return "business/bu_insert";
	}

	// 구성원 추가
	@PostMapping(value = "insert")
	public String insert(BusinessVO business, RedirectAttributes rttr) {
	    String result = service.insert(business); // 

	    if ("success".equals(result)) { // 문자열로 비교
	        rttr.addAttribute("message", "회원 추가 완료되었습니다.");
	    } else {
	        rttr.addAttribute("message", "회원 추가 실패했습니다.");
	    }
	    
	    return "redirect:bu_listall"; 
	}

	// 수정이동
	@GetMapping(value = "update")
	public String update(@RequestParam("bu_email") String bu_email, Model model) {
        BusinessVO business = service.selectOne(bu_email);
        model.addAttribute("business", business);
        return "business/bu_update";
	}

	// 구성원 수정
	@PostMapping(value = "update")
	public String update(BusinessVO business, RedirectAttributes rttr) {
        String result = service.update(business);
        rttr.addFlashAttribute("message", "회원 수정 완료!");
        return "redirect:bu_listall";
	}

	// 삭제
	@GetMapping(value = "delete")
	 public String delete(String bu_email, RedirectAttributes rttr) {
        service.delete(bu_email);
        rttr.addFlashAttribute("message", "회원 삭제 완료!");
        return "redirect:bu_listall"; 
    }
	
	  @SuppressWarnings("unused")
	private ModelAndView createModelAndView(String viewName, String modelName, Object modelValue) {
	        ModelAndView mav = new ModelAndView();
	        mav.addObject(modelName, modelValue);
	        mav.setViewName(viewName);
	        return mav;
	    }

	// ===============================

}
