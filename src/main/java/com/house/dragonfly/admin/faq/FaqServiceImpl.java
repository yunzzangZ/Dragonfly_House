package com.house.dragonfly.admin.faq;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.house.dragonfly.domain.FAQ;

@Service
public class FaqServiceImpl implements FaqService {

    @Autowired
    private FaqDAO faqDAO;

    @Override
    public List<FAQ> faqList() {
        return faqDAO.faqList();
    }

    @Override
    public FAQ faqView(int faq_id) {
        return faqDAO.faqView(faq_id);
    }

    @Override
    public void faqAdd(FAQ faq) {
        faqDAO.faqAdd(faq);
    }

    @Override
    public void faqUpdate(FAQ faq) {
        faqDAO.faqUpdate(faq);
    }
}
