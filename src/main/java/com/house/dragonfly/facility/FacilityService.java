package com.house.dragonfly.facility;

import java.util.List;
import com.house.dragonfly.domain.FacilityVO;
import com.house.dragonfly.domain.PensionVO;

public interface FacilityService {

    List<FacilityVO> fac_listAll();
    
    FacilityVO fac_selectOne(int fac_id);

    boolean fac_insert(FacilityVO fac_insert);

    boolean fac_update(FacilityVO fac_update);

    boolean fac_delete(int fac_id);

    void insertFacility(FacilityVO facility, PensionVO pension);
}
