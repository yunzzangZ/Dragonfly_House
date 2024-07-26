package com.house.dragonfly.find;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.domain.MEMBER;

@Controller
public class FindController {
    @Autowired
    private FindDAO findDAO;
    
    private static final Logger logger = LoggerFactory.getLogger(FindController.class);
    
    @GetMapping(value = "user/login/findId")
	public String findId() {
		logger.info("아이디찾기으로 이동");
		return "user/login/findId";
	}
    
    @PostMapping(value = "user/login/findId")
    @ResponseBody // JSON 형식으로 반환
    public ResponseEntity<Map<String, Object>> findId(@RequestParam String name, @RequestParam String tel) {
        MEMBER member = new MEMBER();
        member.setName(name);
        member.setTel(tel);
        
        System.out.println(name);
        System.out.println(tel);

        MEMBER foundMember = findDAO.findId(member);
        
        Map<String, Object> response = new HashMap<>();
        
        if (foundMember != null) {
            response.put("email", foundMember.getEmail());
            response.put("check", "1");
        } else {
            response.put("check", "0");
        }

        return ResponseEntity.ok(response); // HTTP 200 응답과 함께 JSON 반환
    }
    
    @GetMapping(value = "user/login/findPassword")
	public String findPassword() {
		logger.info("비밀번호찾기으로 이동");
		return "user/login/findPassword";
	}
    
    @PostMapping(value = "user/login/findPassword")
    @ResponseBody // JSON 형식으로 반환
    public ResponseEntity<Map<String, Object>> findId(@RequestParam String email, @RequestParam String name, @RequestParam String tel) {
        MEMBER member = new MEMBER();
        member.setEmail(email);
        member.setName(name);
        member.setTel(tel);        
        
        System.out.println(email);
        System.out.println(name);
        System.out.println(tel);        

        MEMBER foundMember = findDAO.findPassword(member);
        
        Map<String, Object> response = new HashMap<>();
        
        if (foundMember != null) {
            response.put("password", foundMember.getPassword());
            response.put("check", "1");
        } else {
            response.put("check", "0");
        }

        return ResponseEntity.ok(response); // HTTP 200 응답과 함께 JSON 반환
    }    
}
