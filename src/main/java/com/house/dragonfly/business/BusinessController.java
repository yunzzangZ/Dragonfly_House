package com.house.dragonfly.business;

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

import com.house.dragonfly.domain.BusinessVO;

@Controller
public class BusinessController {

   @Autowired
   private BusinessService service;
   private static final Logger logger = LoggerFactory.getLogger(BusinessController.class);

   // 전체 사원 조회
   @GetMapping(value = "business/bu_listall")
   public ModelAndView bu_listall() {
      List<BusinessVO> list = service.bu_listAll();
      ModelAndView mav = new ModelAndView();
      mav.addObject("list", list);
      mav.setViewName("business/bu_listall");
      return mav;
   }

   // 상세 조회
   @GetMapping(value = "business/bu_selectOne")
   public ModelAndView selectOne(@RequestParam("bu_email") String bu_email) {
      BusinessVO bu = service.bu_selectOne(bu_email);
      ModelAndView mav = new ModelAndView();
      mav.addObject("bu", bu);
      mav.setViewName("business/bu_selectOne");
      return mav;
   }

   // 추가 페이지 이동
   @GetMapping(value = "business/bu_insert")
   public String insertForm(Model model) {
      model.addAttribute("businessVO", new BusinessVO());
      return "business/bu_insert";
   }

   // 사업자 추가
   @PostMapping(value = "business/bu_insert")
   @Transactional
   public String insert(@ModelAttribute("businessVO") BusinessVO bu_insert, RedirectAttributes rttr) {
      boolean result = service.bu_insert(bu_insert);
      if (result) {
         rttr.addFlashAttribute("message", "회원 추가 완료되었습니다.");
      } else {
         rttr.addFlashAttribute("message", "회원 추가 실패했습니다.");
      }
      return "redirect:/business/bu_listall";
   }

   // 수정 폼
   @GetMapping(value = "business/bu_update")
   public ModelAndView update(@RequestParam("bu_email") String bu_email) {
      ModelAndView mav = selectOne(bu_email);
      mav.setViewName("business/bu_update");
      return mav;
   }

   // 사업자 수정
   @PostMapping(value = "business/bu_update")
   @Transactional
   public String update(@ModelAttribute("businessVO") BusinessVO bu_update, RedirectAttributes rttr) {
      boolean result = service.bu_update(bu_update);
      if (result) {
         rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
      } else {
         rttr.addFlashAttribute("message", "수정에 실패했습니다.");
      }
      return "redirect:/business/bu_listall";
   }

   // 삭제
   @GetMapping(value = "business/bu_delete")
   @Transactional
   public String delete(@RequestParam("bu_email") String bu_email, RedirectAttributes rttr) {
      try {
         boolean result = service.bu_delete(bu_email);
         if (result) {
            rttr.addFlashAttribute("message", "회원 삭제 완료!");
         } else {
            rttr.addFlashAttribute("message", "회원 삭제 실패!");
         }
      } catch (Exception e) {
         rttr.addFlashAttribute("message", "회원 삭제 중 오류가 발생했습니다.");
         logger.error("회원 삭제 중 오류 발생: {}, 이메일: {}", e.getMessage(), bu_email);
      }
      return "redirect:/business/bu_listall";
   }
}
