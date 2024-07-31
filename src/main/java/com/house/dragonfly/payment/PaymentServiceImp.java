package com.house.dragonfly.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.PAYMENT;

@Service
public class PaymentServiceImp implements PaymentService {
	
	@Autowired
	private PaymentDAO paydao;
	
	@Override
	public PAYMENT payDetails_bo_num(int bo_num) {
		return paydao.payDetails_bo_num(bo_num);
	}

	@Override
	public PAYMENT payDetails_pay_id(int pay_id) {
		return paydao.payDetails_pay_id(pay_id);
	}
	
	@Override
	public void payInsert(PAYMENT pay) {
		paydao.payInsert(pay);
	}

	@Override
	public void payUpdateCard(PAYMENT pay) {
		paydao.payUpdateCard(pay);
	}

	@Override
	public void payUpdateCash(PAYMENT pay) {
		paydao.payUpdateCash(pay);
	}






}//end
