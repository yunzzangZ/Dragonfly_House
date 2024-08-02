package com.house.dragonfly.pension;

import java.util.List;

import com.house.dragonfly.domain.PensionVO;

public interface PensionDAO {
	   
    // 전체(펜션) 조회
    public List<PensionVO> pen_listAll();
    
    // 펜션 조회 / 기준: 주소
    public PensionVO pen_selectOne(String pen_addr);
    
    // 추가
    public boolean pen_insert(PensionVO pen_insert);
    
    // 수정
    public boolean pen_update(PensionVO pen_update);
    
    // 삭제_주소 기준
    public boolean pen_delete(String pen_addr);

}
