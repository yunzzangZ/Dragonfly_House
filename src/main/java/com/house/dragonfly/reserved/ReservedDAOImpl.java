package com.house.dragonfly.reserved;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.house.dragonfly.domain.BusinessVO;
import com.house.dragonfly.domain.FacilityVO;
import com.house.dragonfly.domain.ReservedVO;

@Repository
public class ReservedDAOImpl implements ReservedDAO {
    
    @Autowired
    private SqlSession sqlSession;
    
    private final static String nameSpace = "com.house.dragonfly.ReservedMapper";

    @Override
    public List<ReservedVO> res_listAll() {
        return sqlSession.selectList(nameSpace + ".res_listAll");
    }

    @Override
    public ReservedVO res_selectOne(int booking_bo_num) {
        return sqlSession.selectOne(nameSpace + ".res_selectOne", booking_bo_num);
    }

    @Override
    @Transactional
    public boolean res_insert(ReservedVO res_insert) {
        try {
            sqlSession.insert(nameSpace + ".res_insert", res_insert);
            return true; // 성공적으로 삽입
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 삽입 실패
        }
    }

    @Override
    @Transactional
    public boolean res_update(ReservedVO res_update) {
        try {
            sqlSession.update(nameSpace + ".res_update", res_update);
            return true; // 성공적으로 업데이트
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 업데이트 실패
        }
    }

    @Override
    @Transactional
    public boolean res_delete(int booking_bo_num) {
        try {
            sqlSession.delete(nameSpace + ".res_delete", booking_bo_num);
            return true; // 성공적으로 삭제
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 삭제 실패
        }
    }
    //===============
}


    