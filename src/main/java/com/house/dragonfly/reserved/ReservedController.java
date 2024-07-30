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

    // 전체 예약 조회
    @GetMapping(value = "reserved/res_listall")
    public ModelAndView res_listall() {
        List<ReservedVO> list = service.res_listAll();
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("reserved/res_listall");
        return mav;
    }
    
    // 상세 조회
    @GetMapping(value = "reserved/res_selectOne")
    public ModelAndView res_selectOne(@RequestParam("booking_bo_num") int booking_bo_num) { // @RequestParam 추가
        ReservedVO fac = service.res_selectOne(booking_bo_num);
        ModelAndView mav = new ModelAndView();
        mav.addObject("fac", fac);
        mav.setViewName("reserved/res_selectOne");
        return mav;
    }
    
    // 추가 페이지 이동
    @GetMapping(value = "reserved/res_insert")
    public String res_insertForm(Model model) { // 메소드 이름 수정
        model.addAttribute("ReservedVO", new ReservedVO());
        return "reserved/res_insert"; // 뷰 이름 수정
    }
    
    // 추가
    @PostMapping(value = "reserved/res_insert")
    public String res_insert(ReservedVO res_insert, RedirectAttributes rttr) {
        boolean result = service.res_insert(res_insert);
        if(result) {
            rttr.addFlashAttribute("message", "시설 등록 완료");
        } else {
            rttr.addFlashAttribute("message", "시설 등록 실패"); // 실패 메시지 수정
        }
        return "redirect:/reserved/res_listall"; // 공백 제거
    }
    
    // 수정 페이지 이동
    @GetMapping(value = "reserved/res_update")
    public ModelAndView res_update(@RequestParam("bo_num") int booking_bo_num) {
        ModelAndView mav = res_selectOne(booking_bo_num);
        mav.setViewName("reserved/res_update");
        return mav;     
    }
    
    // 수정
    @PostMapping(value = "reserved/res_update")
    public String res_update(@ModelAttribute("reserved") ReservedVO res_update, RedirectAttributes rttr) {
        boolean result = service.res_update(res_update);
        if (result) {
            rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
        } else {
            rttr.addFlashAttribute("message", "수정에 실패했습니다.");
        }
        return "redirect:/reserved/res_listall";  	
    }
    
    // 삭제
    @PostMapping(value = "reserved/res_delete") // POST 메소드로 변경
    public String res_delete(@RequestParam("booking_bo_num") int booking_bo_num, RedirectAttributes rttr) {
        service.res_delete(booking_bo_num);
        rttr.addFlashAttribute("message", "삭제 완료!"); // 공백 제거
        return "redirect:/reserved/res_listall";
    }

    // =====
}
