package com.house.dragonfly.facility;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.house.dragonfly.domain.FacilityVO;

@Repository
public class FacilityDAOImpl implements FacilityDAO {
    
    @Autowired
    private SqlSession sqlSession;
    
    private final static String nameSpace = "com.house.dragonfly.FacilityMapper";
    
    @Override
    public List<FacilityVO> fac_listAll() {
        return sqlSession.selectList(nameSpace + ".fac_listAll");
    }

    @Override
    public FacilityVO fac_selectOne(int fac_id) {
        return sqlSession.selectOne(nameSpace + ".fac_selectOne", fac_id);
    }

    @Override
    @Transactional
    public boolean fac_insert(FacilityVO fac_insert) {
        try {
            sqlSession.insert(nameSpace + ".fac_insert", fac_insert);
            return true; // 성공적으로 삽입
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 삽입 실패
        }
    }

    @Override
    @Transactional
    public boolean fac_update(FacilityVO fac_update) {
        try {
            sqlSession.update(nameSpace + ".fac_update", fac_update);
            return true; // 성공적으로 업데이트
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 업데이트 실패
        }
    }

    @Override
    @Transactional
    public boolean fac_delete(int fac_id) {
        try {
            sqlSession.delete(nameSpace + ".fac_delete", fac_id);
            return true; // 성공적으로 삭제
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 삭제 실패
        }
    }
    //===========
}


    