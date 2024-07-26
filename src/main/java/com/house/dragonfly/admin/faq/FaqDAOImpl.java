package com.house.dragonfly.admin.faq;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.house.dragonfly.domain.FAQ;

@Repository
public class FaqDAOImpl implements FaqDAO {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.house.dragonfly.FaqMapper";

    @Override
    public List<FAQ> faqList() {
        return sqlSession.selectList(namespace + ".faqList");
    }

    @Override
    public FAQ faqView(int faq_id) {
        return sqlSession.selectOne(namespace + ".faqView", faq_id);
    }

    @Override
    public void faqAdd(FAQ faq) {
        sqlSession.insert(namespace + ".faqAdd", faq);
    }

    @Override
    public void faqUpdate(FAQ faq) {
        sqlSession.update(namespace + ".faqUpdate", faq);
    }
}
