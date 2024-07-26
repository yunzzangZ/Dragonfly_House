package com.house.dragonfly.room;

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

import com.house.dragonfly.domain.RoomVO;

@Controller
public class RoomController {
    
    @Autowired
    private RoomService service;

    // 전체 방 조회
    @GetMapping(value = "ro_listall")
    public ModelAndView ro_listall() {
        List<RoomVO> list = service.ro_listAll();
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("room/ro_listall");
        return mav;
    }
    
    // 상세 조회
    @GetMapping(value = "ro_selectOne")
    public ModelAndView ro_selectOne(int ro_num) {
        RoomVO ro = service.ro_selectOne(ro_num);
        ModelAndView mav = new ModelAndView();
        mav.addObject("ro", ro);
        mav.setViewName("room/ro_selectOne");
        return mav;
    }
    
    // 추가 페이지 이동
    @GetMapping(value = "ro_insert")
    public String ro_insertForm(Model model) {
        model.addAttribute("roomVO", new RoomVO());
        return "room/ro_insert";     
    }
    
    // 추가
    @PostMapping(value = "ro_insert")
    public String ro_insert(RoomVO ro_insert, RedirectAttributes rttr) {
        boolean result = service.ro_insert(ro_insert);
        if(result) {
            rttr.addFlashAttribute("message", "방 등록 완료");
        } else {
            rttr.addFlashAttribute("message", "방 등록 실패");
        }
        return "redirect:ro_listall";     
    }
    
    // 수정 이동
    @GetMapping(value = "ro_update")
    public ModelAndView ro_update(@RequestParam("ro_num") int ro_num) {
        ModelAndView mav = ro_selectOne(ro_num);
        mav.setViewName("room/ro_update");
        return mav;     
    }
    
    // 수정
    @PostMapping(value = "ro_update")
    public String ro_update(@ModelAttribute("room") RoomVO ro_update, RedirectAttributes rttr) {
        boolean result;
        result = service.ro_update(ro_update);
        if (result) {
            rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
        } else {
            rttr.addFlashAttribute("message", "수정에 실패했습니다.");
        }
        return "redirect:ro_listall";     
    }
    
    // 삭제
    @PostMapping(value = "ro_delete")
    public String ro_delete(int ro_num, RedirectAttributes rttr) {
        service.ro_delete(ro_num);
        rttr.addFlashAttribute("message", "삭제 완료");
        return "redirect:ro_listall";
    }
}