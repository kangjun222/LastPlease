package team.co.kr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import team.co.kr.entity.Member;
import team.co.kr.service.memberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private memberService memberservice;

	@GetMapping("/gologin")
	public String gologin() {
		return "login";
	}

	@GetMapping("/gojoin")
	public String gojoin() {
		return "join";
	}// 蹂댄샇媛��뜙�맂�떎�뒗寃� 二쇱냼李쎌뿉 �궡媛��벖寃� �젙蹂닿� �엯�젰�맖

	@PostMapping("/join")
	public String join(Member member) {
		
		member.makeAddr();
		member.makebirth();
		
		System.out.println(member);
		int result = memberservice.join(member);

		return "main";
	}
	
	@PostMapping("/login")
	public String login(Member login , Model model , HttpSession session) {
		Member result = memberservice.login(login);
		
		System.out.println(result);
		
		String msg = "";
		if(result != null) {
			session.setAttribute("mem",result);
			msg = "로그인이 완료 되었습니다";
			model.addAttribute("msg", msg);
		}
		else {
			msg = "로그인 실패";
			model.addAttribute("msg", msg);
		}
		return "main";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session , Model model) {
		session.invalidate();
		model.addAttribute("msg","로그아웃되었습니다");
		
		
		return "main";
	}

	// GETMAPPING 蹂대떎 蹂댄샇媛� �릺�꽌 �궡媛� �엯�젰�븳寃껋씠 二쇱냼李쎌뿉 �븞�굹�샂


}