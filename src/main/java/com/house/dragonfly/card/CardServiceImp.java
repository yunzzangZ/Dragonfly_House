package com.house.dragonfly.card;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.CARD;

@Service
public class CardServiceImp implements CardService {

	@Autowired
	private CardDAO carddao;

	@Override
	public List<CARD> cardSelect(String email) {
		return carddao.cardSelect(email);
	}
	
	@Override
	public CARD cardDetails(long card_number) {
		return carddao.cardDetails(card_number);
	}
	
	@Override
	public void cardInsert(CARD card) {
		carddao.cardInsert(card);
		
	}

	@Override
	public void cardDelete(long card_number) {
		carddao.cardDelete(card_number);
	}

}//end
