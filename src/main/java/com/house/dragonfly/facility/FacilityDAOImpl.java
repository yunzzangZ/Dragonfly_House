package com.house.dragonfly.facility;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.house.dragonfly.domain.FacilityVO;

@Repository
public class FacilityDAOImpl implements FacilityDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final static String nameSpace = "com.house.dragonfly.businessMapper";
	
	
	@Override
	public List<FacilityVO> listAll() {
		
		return sqlSession.selectList(nameSpace+".listAll");
	}

	@Override
	public FacilityVO selectOne(int fac_id) {
		
		return sqlSession.selectOne(nameSpace);
	}

	@Override
	public int insert(FacilityVO fac) {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace+".insert", fac);
	}

	@Override
	public int update(FacilityVO fac) {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace+".update", fac);
	}

	@Override
	public int delete(int fac_id) {
		// TODO Auto-generated method stub
		return sqlSession.delete(nameSpace+".delete", fac_id);
	}

}
