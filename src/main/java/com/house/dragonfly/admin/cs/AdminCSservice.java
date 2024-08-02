package com.house.dragonfly.admin.cs;

import com.house.dragonfly.domain.CS;
import java.util.List;

public interface AdminCSservice {
    List<CS> getCsList();
    CS getCsView(int cs_id);
    void saveCs(CS cs);
    void saveCsResponse(int cs_id, String cs_response);
}
