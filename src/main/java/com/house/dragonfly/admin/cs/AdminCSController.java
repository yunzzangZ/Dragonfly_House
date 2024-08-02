package com.house.dragonfly.admin.cs;

import com.house.dragonfly.domain.CS;
import com.house.dragonfly.admin.cs.AdminCSservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/cs")
public class AdminCSController {

    @Autowired
    private AdminCSservice adminCSservice;

    @GetMapping("/csList")
    public String getCsList(Model model) {
        List<CS> csList = adminCSservice.getCsList();
        model.addAttribute("csList", csList);
        return "admin/cs/csList";
    }

    @GetMapping("/csView/{cs_id}")
    public String getCsView(@PathVariable("cs_id") int cs_id, Model model) {
        CS cs = adminCSservice.getCsView(cs_id);
        model.addAttribute("cs", cs);
        return "admin/cs/csView";
    }

    @PostMapping("/csResponse")
    public String saveCsResponse(@RequestParam("cs_id") int cs_id, @RequestParam("cs_response") String cs_response) {
    	adminCSservice.saveCsResponse(cs_id, cs_response);
        return "redirect:/admin/cs/csList";
    }
}
