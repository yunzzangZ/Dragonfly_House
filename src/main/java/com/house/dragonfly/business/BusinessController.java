package com.house.dragonfly.business;

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

import com.house.dragonfly.domain.BusinessVO;

@Controller
public class BusinessController {

    @Autowired
    private BusinessService service;

    // 전체 사원 조회
    @GetMapping(value = "bu_listall")
    public ModelAndView bu_listall() {
        List<BusinessVO> list = service.listAll();
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("business/bu_listall");
        return mav;
    }

    // 상세 조회
    @GetMapping(value = "selectOne")
    public ModelAndView selectOne(String bu_email) {
        BusinessVO bu = service.selectOne(bu_email);
        ModelAndView mav = new ModelAndView();
        mav.addObject("bu", bu);
        mav.setViewName("business/bu_selectOne");
        return mav;
    }

    // 추가 페이지 이동
    @GetMapping(value = "insert")
    public String insertForm(Model model) {
        model.addAttribute("BusinessVO", new BusinessVO());
        return "business/bu_insert";
    }

    // 사업자 추가
    @PostMapping(value = "insert")
    public String insert(BusinessVO bu_insert, RedirectAttributes rttr) {
        boolean result = service.insert(bu_insert);
        if (result) { // boolean 비교
            rttr.addFlashAttribute("message", "회원 추가 완료되었습니다.");
        } else {
            rttr.addFlashAttribute("message", "회원 추가 실패했습니다.");
        }
        return "redirect:bu_listall";
    }

    // 수정 폼
    @GetMapping(value = "update")
    public ModelAndView update(@RequestParam("bu_email") String bu_email) {
//        BusinessVO business = service.selectOne(bu_email);
//        ModelAndView mav = new ModelAndView();
//        mav.addObject("business", business);
        ModelAndView mav = selectOne(bu_email);
        mav.setViewName("business/bu_update");
        return mav;
    }

    // 사업자 수정
    @PostMapping(value = "update")
    public String update(@ModelAttribute("business") BusinessVO bu_update, RedirectAttributes rttr) {
        boolean result = service.update(bu_update);
        if (result) { // boolean 비교
            rttr.addFlashAttribute("수정이 완료되었습니다.");
        } else {
            rttr.addFlashAttribute( "수정에 실패했습니다.");
        }
        return "redirect:bu_listall";
    }

    // 삭제
    @GetMapping(value = "delete")
    public String delete(String bu_email, RedirectAttributes rttr) {
        service.delete(bu_email);
        rttr.addFlashAttribute("message", "회원 삭제 완료!");
        return "redirect:bu_listall";
    }

    // =====
}