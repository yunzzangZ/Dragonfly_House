package com.house.dragonfly.room_facility;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.house.dragonfly.domain.RoomFacilityVO;

@Repository
public class RoFacDAOImpl implements RoFacDAO {

	@Autowired
	private SqlSession sqlSession;

	private final static String nameSpace = "com.house.dragonfly.rofacMapper";

	@Override
	public List<RoomFacilityVO> rofac_listAll() {
		return sqlSession.selectList(nameSpace + ".rofac_listAll");
	}

	@Override
	public RoomFacilityVO rofac_selectOne(int room_ro_num) {
		return sqlSession.selectOne(nameSpace + ".rofac_selectOne", room_ro_num); 																											// 전달
	}

	@Override
	@Transactional
	public boolean rofac_insert(RoomFacilityVO rofac_insert) {
		try {
			sqlSession.insert(nameSpace + ".rofac_insert", rofac_insert);
			return true; // 성공적으로 삽입
		} catch (Exception e) {
			// 예외 처리 (로그 기록 등)
			e.printStackTrace(); // 로그 기록
			return false; // 삽입 실패
		}
	}

	@Override
	@Transactional
	public boolean rofac_update(RoomFacilityVO rofac_update) {
		try {
			sqlSession.update(nameSpace + ".rofac_update", rofac_update);
			return true; // 성공적으로 업데이트
		} catch (Exception e) {
			// 예외 처리 (로그 기록 등)
			e.printStackTrace(); // 로그 기록
			return false; // 업데이트 실패
		}
	}

	@Override
	@Transactional
	public boolean rofac_delete(int room_ro_num) {
		try {
			sqlSession.delete(nameSpace + ".rofac_delete", room_ro_num); 
																												
			return true; // 성공적으로 삭제
		} catch (Exception e) {
			// 예외 처리 (로그 기록 등)
			e.printStackTrace(); // 로그 기록
			return false; // 삭제 실패
		}
	}
//===========
}
