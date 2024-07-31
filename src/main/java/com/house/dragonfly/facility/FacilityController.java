package com.house.dragonfly.facility;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
    private static final Logger logger = LoggerFactory.getLogger(FacilityController.class);

    // 전체 외부시설 조회
    @GetMapping(value = "facility/fac_listall")
    public ModelAndView fac_listall() {
        List<FacilityVO> list = service.fac_listAll();
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("facility/fac_listall");
        return mav;
    }
    
    // 상세 조회
    @GetMapping(value = "facility/fac_selectOne")
    public ModelAndView selectOne(@RequestParam("fac_id") int fac_id) {
        FacilityVO fac = service.fac_selectOne(fac_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("fac", fac);
        mav.setViewName("facility/fac_selectOne");
        return mav;
    }
    
    // 추가 페이지 이동
    @GetMapping(value = "facility/fac_insert")
    public String insertForm(Model model) {
        model.addAttribute("facility", new FacilityVO()); // attribute 이름 수정
        return "facility/fac_insert";     
    }
    
    // 추가
    @PostMapping(value = "facility/fac_insert")
    @Transactional
    public String insert(FacilityVO fac_insert, RedirectAttributes rttr) {
        boolean result = service.fac_insert(fac_insert);
        if (result) {
            rttr.addFlashAttribute("message", "시설 등록 완료");
        } else {
            rttr.addFlashAttribute("message", "시설 등록 실패");
        }
        return "redirect:/facility/fac_listall";     
    }
    
    // 수정 이동
    @GetMapping(value = "facility/fac_update")
    public ModelAndView update(@RequestParam("fac_id") int fac_id) {
        ModelAndView mav = selectOne(fac_id);
        mav.setViewName("facility/fac_update");
        return mav;
    }
    
    // 수정
    @PostMapping(value = "facility/fac_update") // 수정된 부분
    @Transactional
    public String update(@ModelAttribute("facility") FacilityVO fac_update, RedirectAttributes rttr) {
        boolean result = service.fac_update(fac_update);
        if (result) {
            rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
        } else {
            rttr.addFlashAttribute("message", "수정에 실패했습니다.");
        }
        return "redirect:/facility/fac_listall";     
    }
    
    // 삭제
    @GetMapping(value = "facility/fac_delete") // 수정된 부분
    @Transactional
    public String delete(@RequestParam("fac_id") int fac_id, RedirectAttributes rttr) {
        try {
            boolean result = service.fac_delete(fac_id);
            if (result) {
                rttr.addFlashAttribute("message", "삭제 완료!");
            } else {
                rttr.addFlashAttribute("message", "삭제 실패!");
            }
        } catch (Exception e) {
            rttr.addFlashAttribute("message", "시설 삭제 중 오류가 발생했습니다.");
            logger.error("시설 삭제 중 오류 발생: {}", e.getMessage(), e); // 오류 메시지 추가
        }
        return "redirect:/facility/fac_listall"; 
    }
    
    //===========
}
