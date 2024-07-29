package com.house.dragonfly.admin.faq;

import java.util.List;
import com.house.dragonfly.domain.FAQ;

public interface FaqService {
    List<FAQ> faqList();
    FAQ faqView(int faq_id);
    void faqAdd(FAQ faq);
    void faqUpdate(FAQ faq);
}
