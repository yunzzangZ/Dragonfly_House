package com.house.dragonfly.booking;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.house.dragonfly.domain.BOOKING;
import com.house.dragonfly.domain.PAYMENT;

@Repository
public class bookingDAOImp implements bookingDAO {

	@Inject
	private SqlSession SqlSession;

	private final static String nameSpace = "com.house.dragonfly.BookinglistMapper";

	@Override
	public List<BOOKING> bookingListSelect(String email) {
		return SqlSession.selectList(nameSpace + ".bookingListSelect", email);
	}

	@Override
	public BOOKING bookingListDetails(int bo_num) {
		return SqlSession.selectOne(nameSpace + ".bookingListDetails", bo_num);
	}

	@Override
	public List<BOOKING> bookingCancleSelect(String email) {
		return SqlSession.selectList(nameSpace + ".bookingCancleSelect", email);
	}

	@Override
	public void bookingCancleUpdate(int bo_num) {
		SqlSession.selectOne(nameSpace + ".bookingCancleUpdate", bo_num);
	}

	@Override
	public void bookingInsert(BOOKING bo) {
		SqlSession.selectOne(nameSpace + ".bookingInsert", bo);
	}

	@Override
	public void bookingpayUpdate(PAYMENT pay) {
		SqlSession.selectOne(nameSpace + ".bookingpayUpdate", pay);
	}

  
    @Override
    public BOOKING selectBookingById(int bo_num) {
        return SqlSession.selectOne(nameSpace + "selectBookingById", bo_num);
    }

    @Override
    public void updateBookingStatus(int bo_num, String status) {
        SqlSession.update(nameSpace + "updateBookingStatus", new BookingStatusUpdateParams(bo_num, status));
    }


}// end
