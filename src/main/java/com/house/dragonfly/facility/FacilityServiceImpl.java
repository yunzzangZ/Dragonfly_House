package com.house.dragonfly.facility;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.house.dragonfly.domain.FacilityVO;
import com.house.dragonfly.domain.PensionVO;
import com.house.dragonfly.pension.PensionDAO;

@Service
public class FacilityServiceImpl implements FacilityService {

    private static final Logger logger = LoggerFactory.getLogger(FacilityServiceImpl.class);

    @Autowired
    private PensionDAO pensionDao;

    @Autowired
    private FacilityDAO facilityDao;

	@Override
    @Transactional
    public void insertFacility(FacilityVO facility, PensionVO pension) {
        try {
            // pension 테이블에 데이터 삽입
            pensionDao.pen_insert(pension);
            
            // facility 테이블에 데이터 삽입
            facilityDao.fac_insert(facility);
        } catch (Exception e) {
            // 예외 처리 및 로깅
            logger.error("Error while inserting facility and pension data", e);
            throw e;
        } 
    }

    @Override
    public List<FacilityVO> fac_listAll() {
        return facilityDao.fac_listAll();
    }

    @Override
    public FacilityVO fac_selectOne(int fac_id) {
        return facilityDao.fac_selectOne(fac_id);
    }

    @Override
    public boolean fac_insert(FacilityVO fac_insert) {
        return facilityDao.fac_insert(fac_insert);
    }

    @Override
    public boolean fac_update(FacilityVO fac_update) {
        return facilityDao.fac_update(fac_update);
    }

    @Override
    public boolean fac_delete(int fac_id) {
        return facilityDao.fac_delete(fac_id);
    }
}
