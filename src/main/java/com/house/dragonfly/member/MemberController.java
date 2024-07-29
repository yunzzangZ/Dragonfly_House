package com.house.dragonfly.member;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.house.dragonfly.domain.MEMBER;

@Controller
public class MemberController {
	@Inject
	private MemberService service;

//	임시 myInfoAll이동 및 정보 list가져오기
	@GetMapping(value = "member/myInfoAll")
	public ModelAndView myInfoAll() {
		System.out.println("회원정보 전체 출력");
		List<MEMBER> memberlist = service.myInfoAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberlist", memberlist);
		mav.setViewName("member/myInfoAll");
		return mav;
	}// end

//	mypage이동
	@GetMapping(value = "member/mypage")
	public String mypage() {
		System.out.println("mypage 이동");
		return "member/mypage";
	}// end

//	myinfo이동 및 가져오기
	@GetMapping(value = "member/myInfo")
	public ModelAndView myInfo(String email) {
		System.out.println(email + "의 정보 출력");
		MEMBER mem = service.myInfo(email);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mem", mem);
		mav.setViewName("member/myInfo");
		return mav;
	}// end

//	myInfoUpdate이동
	@GetMapping(value = "member/myInfoUpdate")
	public ModelAndView myInfoUpdate(String email) {
		System.out.println("회원수정 화면이동");
		ModelAndView mav = myInfo(email);
		mav.setViewName("member/myInfoUpdate");
		return mav;
	}// end
	
//	Update_회원수정
	@RequestMapping(value = "member/InfoUpdate", method = RequestMethod.POST)
	public String InfoUpdate(MEMBER mem) {
		System.out.println("회원 수정");
		service.myInfoUpdate(mem);
		return "redirect:/member/myInfo?email="+mem.getEmail();
	}//end
	

//	updatePw이동
	@GetMapping(value = "member/updatePw")
	public ModelAndView updatePw(String email) {
		System.out.println("비번폼 이동");
		ModelAndView mav = myInfo(email);
		mav.setViewName("member/updatePw");
		return mav;
	}// end

//	updatePwEmail이동
//	@GetMapping(value = "updatePwEmail")
//	public ModelAndView updatePwEmail(String email) {
//		System.out.println("비번 email 인증");
//		ModelAndView mav = myInfo(email);
//		mav.setViewName("member/updatePwEmail");
//		return mav;
//	}// end

//	비밀번호 변경
	@RequestMapping(value = "member/UpPw", method = RequestMethod.POST)
	public String updatePw(MEMBER mem) {
		System.out.println("비번변경");
		service.updatePw(mem);
		return "redirect:/member/myInfo?email="+mem.getEmail();
	}//end
	
//	memberDelete이동
	@GetMapping(value = "member/memberDelete")
	public ModelAndView memberDelete(String email) {
		System.out.println("삭제폼 이동");
		ModelAndView mav = myInfo(email);
		mav.setViewName("member/memberDelete");
		return mav;
	}// end

//	memberDeleteEmail이동
	@GetMapping(value = "member/memberDeleteEmail")
	public ModelAndView memberDeleteEmail(String email) {
		System.out.println("삭제 email 인증");
		ModelAndView mav = myInfo(email);
		mav.setViewName("member/memberDeleteEmail");
		return mav;
//		return "member/memberDeleteEmail";
	}// end

//	memberDeleteDone이동
	@GetMapping(value = "member/memberDeleteDone")
	public String memberDeleteDone(String email) {
		System.out.println("삭제완료");
		service.memberDelete(email);
		return "member/memberDeleteDone";
	}// end

}// end
