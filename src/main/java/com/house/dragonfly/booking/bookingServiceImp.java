package com.house.dragonfly.booking;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.BOOKING;

@Service
public class bookingServiceImp implements bookingService {

	@Inject
	private bookingDAO bodao;
	
	@Override
	public List<BOOKING> bookingListAll() {
		return bodao.bookingListAll();
	}

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
	public void bookingCancleUpdate(int bo_num) {
		bodao.bookingCancleUpdate(bo_num);
	}

}//end
