package com.house.dragonfly.booking;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.BOOKING;
import com.house.dragonfly.domain.PAYMENT;

@Service
public class bookingServiceImp implements bookingService {

	@Inject
	private bookingDAO bodao;

	@Override
	public List<BOOKING> bookingListSelect(String email) {
		return bodao.bookingListSelect(email);
	}

	@Override
	public BOOKING bookingListDetails(int bo_num) {
		return bodao.bookingListDetails(bo_num);
	}

	@Override
	public List<BOOKING> bookingCancleSelect(String email) {
		return bodao.bookingCancleSelect(email);
	}


	@Override
	public void bookingInsert(BOOKING bo) {
		bodao.bookingInsert(bo);
	}

	@Override
	public void bookingpayUpdate(PAYMENT pay) {
		bodao.bookingpayUpdate(pay);
	}

    @Override
    public void bookingCancleUpdate(int bo_num) {
    	bodao.bookingCancleUpdate(bo_num);
    }

	@Override
	public BOOKING selectBookingById(int bo_num) {
		return bodao.selectBookingById(bo_num);
	}

	@Override
	public void updateBookingStatus(int bo_num, String status) {
		bodao.updateBookingStatus(bo_num, status);
	}
}// end
