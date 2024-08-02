package com.house.dragonfly.admin.register;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.house.dragonfly.domain.BUSINESS;

@Repository
public class BusinessResDAOImpl implements BusinessResDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void registerBusiness(BUSINESS business) {
        sqlSession.insert("com.house.dragonfly.admin.register.BusinessResMapper.registerBusiness", business);
    }
}
