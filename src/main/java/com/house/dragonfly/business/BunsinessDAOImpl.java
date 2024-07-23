package com.house.dragonfly.business;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.house.dragonfly.domain.BusinessVO;

@Repository
public class BunsinessDAOImpl implements BusinessDAO {
    
    @Autowired
    private SqlSession sqlSession;
    
    private final static String nameSpace = "com.house.dragonfly.businessMapper";

	@Override
	public List<BusinessVO> listAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace+".listAll");
	}

	@Override
	public BusinessVO selectOne(String bu_email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace+".selectOne", bu_email);
	}

	@Override
	public String insert(BusinessVO bu) {
		    sqlSession.insert(nameSpace + ".insert", bu);
		    return bu.getbu_email();
		
	}

	@Override
	public String update(BusinessVO bu) {
		// TODO Auto-generated method stub
		sqlSession.update(nameSpace+".update",bu);
		 return bu.getbu_email();
	}

	@Override
	public String delete(String bu_email) {
	    // 데이터 삭제
	    sqlSession.delete(nameSpace + ".delete", bu_email);
	    
	    // 삭제한 이메일을 반환
	    return bu_email; // 매개변수로 받은 bu_email을 반환
	}
    
}