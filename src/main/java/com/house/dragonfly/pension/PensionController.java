package com.house.dragonfly.pension;

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

import com.house.dragonfly.domain.PensionVO;

@Controller
public class PensionController {

    @Autowired
    private PensionService service;
    private static final Logger logger = LoggerFactory.getLogger(PensionController.class);

    // 전체 펜션 목록 조회
    @GetMapping("pension/pen_listall")
    public ModelAndView listAll() {
        List<PensionVO> list = service.pen_listAll();
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("pension/pen_listall");
        return mav;
    }

    // 상세 조회
    @GetMapping("pension/pen_selectOne")
    public ModelAndView selectOne(@RequestParam("pen_addr") String pen_addr) {
        PensionVO pen = service.pen_selectOne(pen_addr);
        ModelAndView mav = new ModelAndView();
        mav.addObject("pen", pen);
        mav.setViewName("pension/pen_selectOne"); 
        return mav;
    }

    // 추가 페이지 이동
    @GetMapping("pension/pen_insert")
    public String insertForm(Model model) {
        model.addAttribute("pensionVO", new PensionVO());
        return "pension/pen_insert";
    }

    // 추가
    @PostMapping("pension/pen_insert")
    public String insert(@ModelAttribute("pensionVO") PensionVO pensionVO, RedirectAttributes rttr) {
        boolean result = service.pen_insert(pensionVO);
        rttr.addFlashAttribute("message", result ? "펜션 등록 완료" : "펜션 등록 실패");
        return "redirect:/pension/pen_listall"; 
    }

    // 수정 페이지 이동
    @GetMapping("pension/pen_update")
    public ModelAndView updateForm(@RequestParam("pen_addr") String pen_addr) {
        PensionVO pen = service.pen_selectOne(pen_addr);
        ModelAndView mav = new ModelAndView();
        mav.addObject("pen", pen);
        mav.setViewName("pension/pen_update");
        return mav;
    }

    // 수정
    @PostMapping("pension/pen_update")
    public String update(@ModelAttribute("pen") PensionVO penUpdate, RedirectAttributes rttr) {
        boolean result = service.pen_update(penUpdate);
        rttr.addFlashAttribute("message", result ? "수정이 완료되었습니다." : "수정에 실패했습니다.");
        return "redirect:/pension/pen_listall"; 
    }

    // 삭제
    @GetMapping(value = "pension/pen_delete") 
    @Transactional
    public String delete(@RequestParam("pen_addr") String pen_addr, RedirectAttributes rttr) {
        try {
            boolean result = service.pen_delete(pen_addr);
            rttr.addFlashAttribute("message", result ? "삭제 완료!" : "삭제 실패!");
        } catch (Exception e) {
            rttr.addFlashAttribute("message", "시설 삭제 중 오류가 발생했습니다.");
            logger.error("펜션 삭제 중 오류 발생: {}", e.getMessage(), e); 
        }
        return "redirect:/pension/pen_listall";
    }
}
