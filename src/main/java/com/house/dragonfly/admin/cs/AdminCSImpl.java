package com.house.dragonfly.admin.cs;

import com.house.dragonfly.domain.CS;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class AdminCSImpl implements AdminCSDAO {

    private static final String NAMESPACE = "com.house.dragonfly.mapper.AdminCSMapper";

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<CS> getCsList() {
        return sqlSession.selectList(NAMESPACE + ".getCsList");
    }

    @Override
    public CS getCsView(int cs_id) {
        return sqlSession.selectOne(NAMESPACE + ".getCsView", cs_id);
    }

    @Override
    public void saveCs(CS cs) {
        sqlSession.insert(NAMESPACE + ".saveCs", cs);
    }

    @Override
    public void saveCsResponse(int cs_id, String cs_response) {
        sqlSession.update(NAMESPACE + ".saveCsResponse", new Object[]{cs_id, cs_response});
    }
}
