package com.house.dragonfly.admin.mailtxt;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.house.dragonfly.domain.SENDDING_TXT;
import com.house.dragonfly.admin.mailtxt.*;

@Controller
@RequestMapping("/admin/mail")
public class MailTextController {

    @Autowired
    private MailTextService mailTextService;

    @GetMapping("/listMailTexts")
    public String listMailTexts(Model model) {
        List<SENDDING_TXT> mailTexts = mailTextService.getAllMailTexts();
        model.addAttribute("mailTexts", mailTexts);
        return "admin/mail/listMailTexts";
    }

    @GetMapping("/viewMailText/{mailTxtCode}")
    public String viewMailText(@PathVariable int mailTxtCode, Model model) {
        SENDDING_TXT mailText = mailTextService.getMailTextById(mailTxtCode);
        model.addAttribute("mailText", mailText);
        return "admin/mail/viewMailText";
    }

    @GetMapping("/addMailText")
    public String addMailTextForm() {
        return "admin/mail/addMailText";
    }

    @PostMapping("/addMailText")
    public String addMailText(SENDDING_TXT mailText) {
        mailTextService.addMailText(mailText);
        return "redirect:/admin/mail/listMailTexts";
    }

    @GetMapping("/editMailText/{mailTxtCode}")
    public String editMailTextForm(@PathVariable int mailTxtCode, Model model) {
        SENDDING_TXT mailText = mailTextService.getMailTextById(mailTxtCode);
        model.addAttribute("mailText", mailText);
        return "admin/mail/editMailText";
    }

    @PostMapping("/updateMailText")
    public String updateMailText(SENDDING_TXT mailText) {
        mailTextService.editMailText(mailText);
        return "redirect:/admin/mail/listMailTexts";
    }

    @GetMapping("/deleteMailText/{mailTxtCode}")
    public String deleteMailText(@PathVariable int mailTxtCode) {
        mailTextService.removeMailText(mailTxtCode);
        return "redirect:/admin/mail/listMailTexts";
    }
}