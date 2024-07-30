package com.house.dragonfly.admin.register;

import com.house.dragonfly.domain.MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class RegiService {

    @Autowired
    private RegiMapper regiMapper;

    @Autowired
    private HttpSession session;

    public void insertMember(MEMBER member) {
        regiMapper.insertMember(member);
        // 회원 가입 후 세션에 이메일 설정
        session.setAttribute("email", member.getEmail());
    }
    
    // 추가: 이메일 중복 확인 메서드
    public boolean isEmailDuplicate(String email) {
        try {
            MEMBER member = regiMapper.selectMemberByEmail(email);
            return member != null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}