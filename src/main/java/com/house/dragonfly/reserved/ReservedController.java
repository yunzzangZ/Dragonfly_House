package com.house.dragonfly.reserved;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.house.dragonfly.domain.ReservedVO;

@Controller
public class ReservedController {

    @Autowired
    private ReservedService service;

    // 전체 사원 조회
    @GetMapping(value = "res_listall")
    public ModelAndView res_listall() {
        List<ReservedVO> list = service.res_listAll();
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("reserved/res_listall");
        return mav;
    }
    
    // 상세 조회
    @GetMapping(value = "res_selectOne")
    public ModelAndView res_selectOne(int booking_bo_num) {
    	ReservedVO fac = service.res_selectOne(booking_bo_num);
        ModelAndView mav = new ModelAndView();
        mav.addObject("fac", fac);
        mav.setViewName("reserved/res_selectOne");
        return mav;
    }
    
    // 추가 페이지 이동
    @GetMapping (value = "res_insert")
    public String fac_insertForm(Model model) {
    	model.addAttribute("FacilityVO", new ReservedVO());
		return "reserved/fac_insert";    	
    }
    
    // 추가
    @PostMapping(value = "res_insert")
    public String fac_insert(ReservedVO res_insert, RedirectAttributes rttr) {
    	boolean result = service.res_insert(res_insert);
    	if(result) {
    		rttr.addFlashAttribute("message", "시설 등록 완료");
    	} else {
    		rttr.addFlashAttribute("message", "시설 등록 완료");
    	}
		return "redirect: res_listall";  	
    }
    
    // 수정 이동
    @GetMapping(value = "res_update")
    public ModelAndView res_update(@RequestParam("bo_num") int booking_bo_num) {
    	ModelAndView mav = res_selectOne(booking_bo_num);
    	mav.setViewName("reserved/res_update");
		return mav;    	
    }
    
    // 수정
    @PostMapping(value = "res_update")
    public String res_update(@ModelAttribute("reserved") ReservedVO res_update, RedirectAttributes rttr) {
//    	boolean result = service.fac_update(fac_update);
    	 boolean result;
             result = service.res_update(res_update);
             if (result) {
                 rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
             } else {
                 rttr.addFlashAttribute("message", "수정에 실패했습니다.");
             }
			return "redirect:res_listall";  	
    }
    
    // 삭제
    @GetMapping(value = "res_delete")
    public String res_delete(int booking_bo_num, RedirectAttributes rttr) {
        service.res_delete(booking_bo_num);
        rttr.addFlashAttribute("message", " 삭제 완료!");
        return "redirect: redirect:res_listall";
    }

    // =====
}