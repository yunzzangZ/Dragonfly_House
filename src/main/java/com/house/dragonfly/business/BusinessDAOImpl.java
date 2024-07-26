package com.house.dragonfly.business;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.house.dragonfly.domain.BusinessVO;

@Repository
public class BusinessDAOImpl implements BusinessDAO {
    
    @Autowired
    private SqlSession sqlSession;
    
    private final static String nameSpace = "com.house.dragonfly.businessMapper";

    @Override
    public List<BusinessVO> listAll() {
        return sqlSession.selectList(nameSpace + ".listAll");
    }

    @Override
    public BusinessVO selectOne(String bu_email) {
        return sqlSession.selectOne(nameSpace + ".selectOne", bu_email);
    }

    @Override
    @Transactional
    public boolean insert(BusinessVO bu_insert) {
        try {
            sqlSession.insert(nameSpace + ".insert", bu_insert);
            return true; // 성공적으로 삽입
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 삽입 실패
        }
    }

    @Override
    @Transactional
    public boolean update(BusinessVO bu_update) {
        try {
            sqlSession.update(nameSpace + ".update", bu_update);
            return true; // 성공적으로 업데이트
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 업데이트 실패
        }
    }

    @Override
    @Transactional
    public boolean delete(String bu_email) {
        try {
            sqlSession.delete(nameSpace + ".delete", bu_email);
            return true; // 성공적으로 삭제
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 삭제 실패
        }
    }
}

    