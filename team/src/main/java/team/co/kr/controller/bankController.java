package team.co.kr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import team.co.kr.entity.Member;
import team.co.kr.service.memberService;

@Controller
@RequestMapping("/bankcontroller")
public class bankController{
	
	@Autowired
	private memberService memberservice;
	
	
	@GetMapping("/gobank")
	public String gobank() {
		return "bankcontroller";
	}
	
	@GetMapping("/bank")
	public String BANK(Member member , String id,int bank,Model model, HttpSession session) {
		
		System.out.println(id);
		member.setId(id);
		System.out.println(member);
		System.out.println("================");
		memberservice.bank(member);
		member.setBank(bank);
		/* session.invalidate(); */
		model.addAttribute("msg","돈 충전이 완료 되었습니다");
		
		
		return "bank"; 
	}


	
	@GetMapping("bankform")
	public String bankform() {
		
		
		
		
		return "bank";
	}
	@GetMapping("modal")
	public String modal() {
		
		return "modal";

}

}