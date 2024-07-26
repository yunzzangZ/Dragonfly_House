package com.house.dragonfly.room;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.house.dragonfly.domain.RoomVO;

@Repository
public class RoomDAOImpl implements RoomDAO {
    
    @Autowired
    private SqlSession sqlSession;
    
    private final static String nameSpace = "com.house.dragonfly.RoomMapper";
    
    @Override
    public List<RoomVO> ro_listAll() {
        return sqlSession.selectList(nameSpace + ".ro_listAll");
    }

    @Override
    public RoomVO ro_selectOne(int ro_num) {
        return sqlSession.selectOne(nameSpace + ".ro_selectOne", ro_num);
    }

    @Override
    @Transactional
    public boolean ro_insert(RoomVO ro_insert) {
        try {
            sqlSession.insert(nameSpace + ".ro_insert", ro_insert);
            return true; // 성공적으로 삽입
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 삽입 실패
        }
    }

    @Override
    @Transactional
    public boolean ro_update(RoomVO ro_update) {
        try {
            sqlSession.update(nameSpace + ".ro_update", ro_update);
            return true; // 성공적으로 업데이트
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 업데이트 실패
        }
    }

    @Override
    @Transactional
    public boolean ro_delete(int ro_num) {
        try {
            sqlSession.delete(nameSpace + ".ro_delete", ro_num);
            return true; // 성공적으로 삭제
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            return false; // 삭제 실패
        }
    }
    //===========
}


    