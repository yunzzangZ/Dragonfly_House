package com.house.dragonfly.room;

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

import com.house.dragonfly.domain.RoomVO;

@Controller
public class RoomController {
    
    @Autowired
    private RoomService service;
    private static final Logger logger = LoggerFactory.getLogger(RoomController.class);

    // 전체 방 조회
    @GetMapping(value = "business/room/ro_listall")
    public ModelAndView ro_listall() {
        List<RoomVO> list = service.ro_listAll(); // 메소드 호출 일관성
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("business/room/ro_listall");
        return mav;
    }
    
    // 상세 조회
    @GetMapping(value = "business/room/ro_selectOne")
    public ModelAndView selectOne(@RequestParam("ro_num") int ro_num) {
        RoomVO ro = service.ro_selectOne(ro_num);
        ModelAndView mav = new ModelAndView();
        mav.addObject("ro", ro);
        mav.setViewName("business/room/ro_selectOne");
        return mav;
    }
    
    // 추가 페이지 이동
    @GetMapping(value = "business/room/ro_insert")
    public String insertForm(Model model) {
        model.addAttribute("roomVO", new RoomVO());
        return "business/room/ro_insert";     
    }
    
    // 방 추가
    @PostMapping(value = "business/room/ro_insert")
    @Transactional
    public String insert(@ModelAttribute("roomVO") RoomVO ro_insert, RedirectAttributes rttr) { // 모델 어트리뷰트 이름 통일
        boolean result = service.ro_insert(ro_insert);
        if(result) {
            rttr.addFlashAttribute("message", "방 등록 완료");
        } else {
            rttr.addFlashAttribute("message", "방 등록 실패");
        }
        return "redirect:/business/room/ro_listall"; 
    }
    
    // 수정 페이지 이동
    @GetMapping(value = "business/room/ro_update")
    public ModelAndView update(@RequestParam("ro_num") int ro_num) {
        ModelAndView mav = selectOne(ro_num);
        mav.setViewName("business/room/ro_update");
        return mav;     
    }

    // 방 수정
    @PostMapping(value = "business/room/ro_update")
    @Transactional
    public String update(@ModelAttribute("roomVO") RoomVO ro_update, RedirectAttributes rttr) {
        boolean result = service.ro_update(ro_update);
        if (result) {
            rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
        } else {
            rttr.addFlashAttribute("message", "수정에 실패했습니다.");
        }
        return "redirect:/business/room/ro_listall"; 
    }
    
    // 방 삭제
    @PostMapping(value = "business/room/ro_delete")
    @Transactional
    public String delete(@RequestParam("ro_num") int ro_num, RedirectAttributes rttr) {
        try {           
            boolean result = service.ro_delete(ro_num);
            if (result) {
                rttr.addFlashAttribute("message", "방 삭제 완료!");
            } else {
                rttr.addFlashAttribute("message", "방 삭제 실패!");
            }
        } catch (Exception e) {
            rttr.addFlashAttribute("message", "방 삭제 중 오류가 발생했습니다.");
            logger.error("방 삭제 중 오류 발생: {}", e.getMessage(), e); 
        }
        return "redirect:/business/room/ro_listall"; 
    }
}
