package com.house.dragonfly.room_facility;

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

import com.house.dragonfly.domain.RoomFacilityVO;

@Controller
public class RoFacController {

    @Autowired
    private RoFacService service;
    private static final Logger logger = LoggerFactory.getLogger(RoFacController.class);

    // 전체 방 시설 조회
    @GetMapping(value = "rofac/rofac_listall")
    public ModelAndView rofac_listall() {
        List<RoomFacilityVO> list = service.rofac_listAll();
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", list);
        mav.setViewName("rofac/rofac_listall");
        return mav;
    }
    
    // 상세 조회
    @GetMapping(value = "rofac/rofac_selectOne")
    public ModelAndView selectOne(int room_ro_num) {
        RoomFacilityVO rofac = service.rofac_selectOne(room_ro_num);
        ModelAndView mav = new ModelAndView();
        mav.addObject("rofac", rofac);
        mav.setViewName("rofac/rofac_selectOne");
        return mav;
    }
    
    // 추가 페이지 이동
    @GetMapping(value = "rofac/rofac_insert")
    public String insertForm(Model model) {
        model.addAttribute("roomFacilityVO", new RoomFacilityVO());
        return "rofac/rofac_insert";     
    }
    
    // 추가
    @PostMapping(value = "rofac/rofac_insert")
    public String insert(RoomFacilityVO rofac_insert, RedirectAttributes rttr) {
        boolean result = service.rofac_insert(rofac_insert);
        if(result) {
            rttr.addFlashAttribute("message", "시설 등록 완료");
            logger.info("시설 등록 완료: {}", rofac_insert);
        } else {
            rttr.addFlashAttribute("message", "시설 등록 실패");
            logger.error("시설 등록 실패: {}", rofac_insert);
        }
        return "redirect:/rofac/rofac_listall";     
    }
    
    // 수정 이동
    @GetMapping(value = "rofac/rofac_update")
    public ModelAndView updateForm(@RequestParam("room_ro_num") int room_ro_num) {
        ModelAndView mav = selectOne(room_ro_num);
        mav.setViewName("rofac/rofac_update");
        return mav;     
    }
    
    // 수정
    @PostMapping(value = "rofac/rofac_update")
    public String update(@ModelAttribute("roomFacilityVO") RoomFacilityVO rofac_update, RedirectAttributes rttr) {
        boolean result = service.rofac_update(rofac_update);
        if (result) {
            rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
            logger.info("시설 수정 완료: {}", rofac_update);
        } else {
            rttr.addFlashAttribute("message", "수정에 실패했습니다.");
            logger.error("시설 수정 실패: {}", rofac_update);
        }
        return "redirect:/rofac/rofac_listall";     
    }
    
    // 삭제
    @PostMapping(value = "rofac/rofac_delete")
    @Transactional
    public String delete(@RequestParam("room_ro_num") int room_ro_num, RedirectAttributes rttr) {
        try {
            boolean result = service.rofac_delete(room_ro_num);
            if (result) {
                rttr.addFlashAttribute("message", "삭제 완료!");
            } else {
                rttr.addFlashAttribute("message", "삭제 실패!");
            }
        } catch (Exception e) {
            rttr.addFlashAttribute("message", "삭제 중 오류가 발생했습니다.");
            logger.error("시설 삭제 중 오류 발생: {}", e); // 오류 메시지 수정
        }
        return "redirect:/rofac/rofac_listall"; 
    }
    //===================
}
