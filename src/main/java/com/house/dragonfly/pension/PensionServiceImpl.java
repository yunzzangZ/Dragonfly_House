package com.house.dragonfly.pension;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.house.dragonfly.domain.FacilityVO;
import com.house.dragonfly.domain.PensionVO;
import com.house.dragonfly.domain.RoomVO;
import com.house.dragonfly.facility.FacilityServiceImpl;
import com.house.dragonfly.room.RoomDAO;

@Service
public class PensionServiceImpl implements PensionService {
	
    private static final Logger logger = LoggerFactory.getLogger(FacilityServiceImpl.class);
  
    @Autowired
    private PensionDAO dao;
    
    @Autowired
    private RoomDAO ro_dao;

    @Override
    @Transactional
    public void insertPension(PensionVO pension, RoomVO room) {
        try {
            // pension 테이블에 데이터 삽입
        	dao.pen_insert(pension);
            
            // facility 테이블에 데이터 삽입
            ro_dao.ro_insert(room);
        } catch (Exception e) {
            // 예외 처리 및 로깅
            logger.error("Error while inserting facility and pension data", e);
            throw e;
        } 
    }

    
    @Override
    public List<PensionVO> pen_listAll() {
        return dao.pen_listAll();
    }

    @Override
    public PensionVO pen_selectOne(String pen_addr) {
        return dao.pen_selectOne(pen_addr);
    }

    @Override
    public boolean pen_insert(PensionVO pen_insert) {
        return dao.pen_insert(pen_insert);
    }

    @Override
    public boolean pen_update(PensionVO pen_update) {
        return dao.pen_update(pen_update);
    }

    @Override
    public boolean pen_delete(String pen_addr) {
        return dao.pen_delete(pen_addr);
    }
}
