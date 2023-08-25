package team.co.kr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	}// 보호가덜된다는것 주소창에 내가쓴게 정보가 입력됨

	@PostMapping("/join")
	public String join(Member member) {

		System.out.println(member);
		int result = memberservice.join(member);

		return "login";
	}
	
	@PostMapping("/login")
	public String login(Member login) {
		System.out.print(login);
		int result = memberservice.login(login);
		
		return "main";
	}

	// GETMAPPING 보다 보호가 되서 내가 입력한것이 주소창에 안나옴


}
