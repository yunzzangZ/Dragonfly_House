package com.house.dragonfly.admin.register;

import com.house.dragonfly.domain.MEMBER;

public interface RegiMapper {
    void insertMember(MEMBER member);
    
    // 추가: 이메일 중복 확인 메서드
    MEMBER selectMemberByEmail(String email);
}