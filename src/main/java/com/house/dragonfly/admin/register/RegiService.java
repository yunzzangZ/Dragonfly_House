package com.house.dragonfly.admin.register;

import com.house.dragonfly.domain.MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegiService {

    @Autowired
    private RegiMapper regiMapper;

    public void insertMember(MEMBER member) {
        regiMapper.insertMember(member);
    }
}
