package com.house.dragonfly.admin.cs;

import com.house.dragonfly.admin.cs.*;
import com.house.dragonfly.domain.CS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AdminCSserviceImpl implements AdminCSservice {

    @Autowired
    private AdminCSDAO adminCSDAO;

    @Override
    public List<CS> getCsList() {
        return adminCSDAO.getCsList();
    }

    @Override
    public CS getCsView(int cs_id) {
        return adminCSDAO.getCsView(cs_id);
    }

    @Override
    public void saveCs(CS cs) {
    	adminCSDAO.saveCs(cs);
    }

    @Override
    public void saveCsResponse(int cs_id, String cs_response) {
    	adminCSDAO.saveCsResponse(cs_id, cs_response);
    }
}
