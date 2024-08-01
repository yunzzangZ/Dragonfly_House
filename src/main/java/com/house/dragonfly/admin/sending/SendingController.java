package com.house.dragonfly.admin.sending;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.house.dragonfly.domain.SENDING;

@Controller
@RequestMapping("/admin/mail")
public class SendingController {

    @Autowired
    private SendingService sendingService;

    @Autowired
    private JavaMailSender mailSender;

    @GetMapping("/sendding/senddingList")
    public String senddingList(Model model) {
        List<SENDING> sendings = sendingService.getAllSendings();
        model.addAttribute("sendings", sendings);
        return "admin/mail/senddingList";
    }

    @GetMapping("/senddingAllView")
    public String senddingAllView(Model model) {
        List<SENDING> sendings = sendingService.getSendingsByStatus("발송완료");
        model.addAttribute("sendings", sendings);
        return "admin/mail/senddingAllView";
    }

    @GetMapping("/sendMailForm")
    public String showSendMailForm(Model model) {
        model.addAttribute("emailForm", new EmailForm());
        return "admin/mail/sendMailForm";
    }

    @PostMapping("/sendMail")
    public String sendMail(@RequestParam("to") String to,
                           @RequestParam("subject") String subject,
                           @RequestParam("text") String text,
                           RedirectAttributes redirectAttributes) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(to);
            message.setSubject(subject);
            message.setText(text);
            message.setFrom("parkwasabi@naver.com");
            mailSender.send(message);
            redirectAttributes.addFlashAttribute("successMessage", "이메일이 성공적으로 전송되었습니다!");
        } catch (Exception e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("errorMessage", "이메일 전송에 실패했습니다. 다시 시도해 주세요.");
        }
        return "redirect:/admin/mail/sendMailForm";
    }

    public static class EmailForm {
        private String to;
        private String subject;
        private String text;

        // getters and setters
        public String getTo() {
            return to;
        }

        public void setTo(String to) {
            this.to = to;
        }

        public String getSubject() {
            return subject;
        }

        public void setSubject(String subject) {
            this.subject = subject;
        }

        public String getText() {
            return text;
        }

        public void setText(String text) {
            this.text = text;
        }
    }
}

