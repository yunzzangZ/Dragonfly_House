package com.house.dragonfly.payment;

import com.house.dragonfly.domain.PAYMENT;

public interface PaymentService {

// 결제상세보기_예약번호로
	public PAYMENT payDetails_bo_num(int bo_num);

//		결제하기
	public void payInsertUpdate(PAYMENT pay);

//		결제 추가_card
//	public void payInsertCard(PAYMENT pay);

//		결제 추가_cash
//	public void payInsertCash(PAYMENT pay);

//		결제 완료시 booking 수정
	public void payInsertDone(PAYMENT pay);

//		결제 상세보기_수정용
	public PAYMENT payDetails_pay_id(int pay_id);

//		결제 수정_카드
	public void payUpdateCard(PAYMENT pay);

//		결제 수정_현금
	public void payUpdateCash(PAYMENT pay);
}// end
