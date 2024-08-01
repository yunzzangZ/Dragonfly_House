package com.house.dragonfly.admin.faq;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.house.dragonfly.domain.FAQ;

@Controller
public class AdminFaqController {

    @Autowired
    private FaqService faqService;

    @GetMapping("/admin/faq/faqList")
    public ModelAndView faqList() {
        List<FAQ> faqs = faqService.faqList();
        ModelAndView mav = new ModelAndView();
        mav.addObject("faqs", faqs);
        mav.setViewName("faq/faqList");
        return mav;
    }

    @GetMapping("/admin/faq/faqView")
    public ModelAndView faqView(@RequestParam("faq_id") int faq_id) {
        FAQ faq = faqService.faqView(faq_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("faq", faq);
        mav.setViewName("faq/faqView");
        return mav;
    }

    @GetMapping("/admin/faq/faqAdd")
    public String faqAddForm() {
        return "faq/faqAdd";
    }

    @PostMapping("/admin/faq/faqAdd")
    public String faqAdd(@RequestParam("question") String question, 
                         @RequestParam("answer") String answer) {
        FAQ faq = new FAQ();
        faq.setQuestion(question);
        faq.setAnswer(answer);
        faqService.faqAdd(faq);
        return "redirect:/admin/faq/faqList";
    }

    @GetMapping("/admin/faq/faqUpdate")
    public ModelAndView faqUpdateForm(@RequestParam("faq_id") int faq_id) {
        FAQ faq = faqService.faqView(faq_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("faq", faq);
        mav.setViewName("faq/faqUpdate");
        return mav;
    }

    @PostMapping("/admin/faq/faqUpdate")
    public String faqUpdate(@RequestParam("faq_id") int faq_id,
                            @RequestParam("question") String question, 
                            @RequestParam("answer") String answer) {
        FAQ faq = faqService.faqView(faq_id);
        faq.setQuestion(question);
        faq.setAnswer(answer);
        faqService.faqUpdate(faq);
        return "redirect:/admin/faq/faqList";
    }
}
