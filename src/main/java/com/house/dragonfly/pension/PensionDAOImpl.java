package com.house.dragonfly.pension;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.house.dragonfly.domain.PensionVO;

@Repository
public class PensionDAOImpl implements PensionDAO {
    
    @Autowired
    private SqlSession sqlSession;
    
    private final static String nameSpace = "com.house.dragonfly.PensionMapper";

    @Override
    public List<PensionVO> pen_listAll() {
        // 모든 펜션 목록을 가져오는 메서드
        return sqlSession.selectList(nameSpace + ".pen_listAll");
    }

    @Override
    public PensionVO pen_selectOne(String pen_addr) {
        // 특정 펜션 정보를 가져오는 메서드
        return sqlSession.selectOne(nameSpace + ".pen_selectOne", pen_addr);
    }

    @Override
    @Transactional
    public boolean pen_insert(PensionVO pen_insert) {
        try {
            sqlSession.insert(nameSpace + ".pen_insert", pen_insert);
            return true; // 성공적으로 삽입
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            e.printStackTrace(); // 예외 로그 출력
            return false; // 삽입 실패
        }
    }

    @Override
    @Transactional
    public boolean pen_update(PensionVO pen_update) {
        try {
            sqlSession.update(nameSpace + ".pen_update", pen_update);
            return true; // 성공적으로 업데이트
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            e.printStackTrace(); // 예외 로그 출력
            return false; // 업데이트 실패
        }
    }

    @Override
    @Transactional
    public boolean pen_delete(String pen_addr) {
        try {
            sqlSession.delete(nameSpace + ".pen_delete", pen_addr);
            return true; // 성공적으로 삭제
        } catch (Exception e) {
            // 예외 처리 (로그 기록 등)
            e.printStackTrace(); // 예외 로그 출력
            return false; // 삭제 실패
        }
    }
    //===================
}