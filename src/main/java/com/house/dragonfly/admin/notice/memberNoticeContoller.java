package com.house.dragonfly.admin.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.domain.NOTICE;

@Controller
public class memberNoticeContoller {
	
	@Autowired
	private NoticeService noticeService;
	
	// 회원공지사항
	@GetMapping(value = "noticeList_common")
	public ModelAndView noticeList() {
		List<NOTICE> notices = noticeService.noticeList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("notices", notices);
		mav.setViewName("notice/noticeList_common");
		return mav;
	}
	
	
	@GetMapping(value = "noticeView_common")
    public ModelAndView noticeView(@RequestParam("notice_id") int notice_id) {
        NOTICE notice = noticeService.noticeView(notice_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("notice", notice);
        mav.setViewName("notice/noticeView_common");
        return mav;
    }
	
	
	
}//end class
