package com.house.dragonfly.payment;

import com.house.dragonfly.domain.PAYMENT;

public interface PaymentDAO {

// 결제상세보기_예약번호로
	public PAYMENT payDetails_bo_num(int bo_num);

//	임시_결제 상세보기_결제번호
	public PAYMENT payDetails_pay_id(int pay_id);

//	결제생성_bo_num이용
	public void payInsert(PAYMENT pay);

//	결제 수정_카드
	public void payUpdateCard(PAYMENT pay);

//	결제 수정_현금
	public void payUpdateCash(PAYMENT pay);

}// end
