package com.house.dragonfly.facility;

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

import com.house.dragonfly.domain.FacilityVO;

@Controller
public class FacilityController {

    @Autowired
    private FacilityService service;

    // 전체 외부시설 조회
    @GetMapping(value = "fac_listall")
    public ModelAndView fac_listall() {
        List<FacilityVO> list = service.fac_listAll();
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("facility/fac_listall");
        return mav;
    }
    
    // 상세 조회
    @GetMapping(value = "fac_selectOne")
    public ModelAndView fac_selectOne(int fac_id) {
        FacilityVO fac = service.fac_selectOne(fac_id);
        ModelAndView mav = new ModelAndView();
        if (fac == null) {
            mav.setViewName("error");
            mav.addObject("message", "시설이 존재하지 않습니다.");
        } else {
            mav.addObject("fac", fac);
            mav.setViewName("facility/fac_selectOne");
        }
        return mav;
    }
    
    // 추가 페이지 이동
    @GetMapping(value = "fac_insert")
    public String insertForm(Model model) {
        model.addAttribute("FacilityVO", new FacilityVO());
        return "facility/fac_insert";     
    }
    
    // 추가
    @PostMapping(value = "fac_insert")
    public String fac_insert(FacilityVO fac_insert, RedirectAttributes rttr) {
        boolean result = service.fac_insert(fac_insert);
        if (result) {
            rttr.addFlashAttribute("message", "시설 등록 완료");
        } else {
            rttr.addFlashAttribute("message", "시설 등록 실패");
        }
        return "redirect:fac_listall";     
    }
    
    // 수정 이동
    @GetMapping(value = "fac_update")
    public ModelAndView fac_update(@RequestParam("fac_id") int fac_id) {
        return fac_selectOne(fac_id);
    }
    
    // 수정
    @PostMapping(value = "fac_update")
    public String fac_update(@ModelAttribute("facility") FacilityVO fac_update, RedirectAttributes rttr) {
        boolean result = service.fac_update(fac_update);
        if (result) {
            rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
        } else {
            rttr.addFlashAttribute("message", "수정에 실패했습니다.");
        }
        return "redirect:fac_listall";     
    }
    
    // 삭제
    @GetMapping(value = "fac_delete")
    public String fac_delete(int fac_id, RedirectAttributes rttr) {
        service.fac_delete(fac_id);
        rttr.addFlashAttribute("message", "삭제 완료!");
        return "redirect:fac_listall"; 
    }
    //===========
}
