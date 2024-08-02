package com.house.dragonfly.admin.register;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.BUSINESS;

@Service("businessResServiceImpl")
public class BusinessResServiceImpl implements BusinessResService {

    @Autowired
    private BusinessResMapper businessResMapper;

    @Override
    public void registerBusiness(BUSINESS business) {
        businessResMapper.registerBusiness(business);
    }
}
