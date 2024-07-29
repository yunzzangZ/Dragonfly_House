package com.house.dragonfly.pension;

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

import com.house.dragonfly.domain.PensionVO;

@Controller
public class PensionController {

    @Autowired
    private PensionService service;

    // 전체 펜션 목록 조회
    @GetMapping(value = "pen_listall")
    public ModelAndView pen_listall() {
        List<PensionVO> list = service.pen_listAll();
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("pension/pen_listall");
        return mav;
    }
    
    // 상세 조회
    @GetMapping(value = "pen_selectOne")
    public ModelAndView pen_selectOne(@RequestParam("pen_addr") String pen_addr) {
        PensionVO pen = service.pen_selectOne(pen_addr);
        ModelAndView mav = new ModelAndView();
        mav.addObject("pen", pen);
        mav.setViewName("pension/pen_selectOne");
        return mav;
    }
    
    // 추가 페이지 이동
    @GetMapping(value = "pen_insert")
    public String pen_insertForm(Model model) {
        model.addAttribute("PensionVO", new PensionVO());
        return "pension/pen_insert";     
    }
    
    // 추가
    @PostMapping(value = "pen_insert")
    public String pen_insert(PensionVO pen_insert, RedirectAttributes rttr) {
        boolean result = service.pen_insert(pen_insert); 
        if(result) {
            rttr.addFlashAttribute("message", "펜션 등록 완료");
        } else {
            rttr.addFlashAttribute("message", "펜션 등록 실패");
        }
        return "redirect:pen_listall"; 
    }
    
    // 수정 페이지 이동
    @GetMapping(value = "pen_update")
    public ModelAndView pen_update(@RequestParam("pen_addr") String pen_addr) {
        PensionVO pen = service.pen_selectOne(pen_addr); // 상세 조회 메서드 사용
        ModelAndView mav = new ModelAndView();
        mav.addObject("pen", pen);
        mav.setViewName("pension/pen_update");
        return mav;     
    }
    
    // 수정
    @PostMapping(value = "pen_update")
    public String pen_update(@ModelAttribute("pen") PensionVO pen_update, RedirectAttributes rttr) {
        boolean result = service.pen_update(pen_update);
        if (result) {
            rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
        } else {
            rttr.addFlashAttribute("message", "수정에 실패했습니다.");
        }
        return "redirect:pen_listall";     
    }
    
    // 삭제
    @GetMapping(value = "pen_delete")
    public String pen_delete(@RequestParam("pen_addr") String pen_addr, RedirectAttributes rttr) {
        boolean result = service.pen_delete(pen_addr); // 삭제 메서드 호출
        if (result) {
            rttr.addFlashAttribute("message", "삭제 완료!");
        } else {
            rttr.addFlashAttribute("message", "삭제 실패!");
        }
        return "redirect:pen_listall"; 
    }
    // =====
}