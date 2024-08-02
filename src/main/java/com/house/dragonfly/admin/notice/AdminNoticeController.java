package com.house.dragonfly.admin.notice;

import java.sql.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.house.dragonfly.domain.NOTICE;

@Controller
public class AdminNoticeController {

    @Autowired
    private NoticeService noticeService;

    @GetMapping("/admin/notice/noticeList")
    public ModelAndView noticeList() {
        List<NOTICE> notices = noticeService.noticeList();
        ModelAndView mav = new ModelAndView();
        mav.addObject("notices", notices);
        mav.setViewName("admin/notice/noticeList");
        return mav;
    }

    @GetMapping("/admin/notice/noticeView")
    public ModelAndView noticeView(@RequestParam("notice_id") int notice_id) {
        NOTICE notice = noticeService.noticeView(notice_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("notice", notice);
        mav.setViewName("admin/notice/noticeView");
        return mav;
    }

    @GetMapping("/admin/notice/noticeAdd")
    public String noticeAddForm() {
        return "admin/notice/noticeAdd";
    }

    @PostMapping("/admin/notice/noticeAdd")
    public String noticeAdd(@RequestParam("title") String title, 
                            @RequestParam("content") String content,
                            @RequestParam("member_email") String member_email) {
        NOTICE notice = new NOTICE();
        notice.setNotice_title(title);
        notice.setNotice_text(content);
        notice.setNotice_date(new Date(System.currentTimeMillis()));
        notice.setMember_email(member_email);
        noticeService.noticeAdd(notice);
        return "redirect:/admin/notice/noticeList";
    }

    @GetMapping("/admin/notice/noticeUpdate")
    public ModelAndView noticeUpdateForm(@RequestParam("notice_id") int notice_id) {
        NOTICE notice = noticeService.noticeView(notice_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("notice", notice);
        mav.setViewName("admin/notice/noticeUpdate");
        return mav;
    }

    @PostMapping("/admin/notice/noticeUpdate")
    public String noticeUpdate(@RequestParam("notice_id") int notice_id,
                               @RequestParam("title") String title, 
                               @RequestParam("content") String content) {
        NOTICE notice = noticeService.noticeView(notice_id);
        notice.setNotice_title(title);
        notice.setNotice_text(content);
        notice.setNotice_date(new Date(System.currentTimeMillis()));
        noticeService.noticeUpdate(notice);
        return "redirect:/admin/notice/noticeList";
    }

    @PostMapping("/admin/notice/noticeDel")
    public String noticeDel(@RequestParam("notice_id") int notice_id) {
        noticeService.noticeDel(notice_id);
        return "redirect:/admin/notice/noticeList";
    }
    
    @GetMapping("/admin/notice/index")
    public String noticeIndex() {
        return "redirect:/index";
    }

}