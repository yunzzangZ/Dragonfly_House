package com.house.dragonfly.card;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.domain.CARD;
import com.house.dragonfly.domain.MEMBER;
import com.house.dragonfly.member.MemberService;

@Controller
public class CardController {
	
	@Autowired
	private CardService caservice;
	@Autowired
	private MemberService memservice;
	
//	cardSelect 이동 및 정보
	@GetMapping(value = "card/cardSelect")
	public ModelAndView cardSelect(String email) {
		System.out.println(email+"의 카드정보");
		ModelAndView mav = new ModelAndView();
		List<CARD> cardList = caservice.cardSelect(email);
		mav.addObject("cardList", cardList);
		mav.setViewName("card/cardSelect");
		return mav;
	}//end
	
//	cardDetails이동 및 정보
	@GetMapping(value = "card/cardDetails")
	public ModelAndView cardDetails(long card_number) {
		System.out.println(card_number+"상세보기");
		CARD card = caservice.cardDetails(card_number);
		ModelAndView mav = new ModelAndView();
		mav.addObject("card", card);
		mav.setViewName("card/cardDetails");
		return mav;
	}//end
	
//	cardInsert이동
	@GetMapping(value = "card/cardInsert")
	public ModelAndView cardInsert(String email) {
		System.out.println("cardInsert 이동");
		MEMBER mem = memservice.myInfo(email);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mem", mem);
		mav.setViewName("card/cardInsert");
		return mav;
	}//end
	
//	cardinsert_post
	@PostMapping(value = "caInsert")
	public String caInsert(CARD card) {
		System.out.println("cardInsert");
		caservice.cardInsert(card);
		return "redirect:/cardSelect?email="+card.getMember_email();
	}//end
	
//	cardDelete이동 및 진행
	@GetMapping(value ="card/cardDelete")
	public String cardDelete(long card_number) {
		System.out.println("card 삭제");
		caservice.cardDelete(card_number);
		return "card/cardDelete";
	}//end
	

}// end
