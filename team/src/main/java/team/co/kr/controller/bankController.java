package team.co.kr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		member.setId(id);
		memberservice.bank(member);
		member.setBank(bank);
		
		/* session.invalidate(); */
		session.setAttribute("bank", bank);
		model.addAttribute("msg","충전이 완료되었습니다.");
		
		
		return "bank"; 
	}


	
	@GetMapping("bankform")
	public String bankform(Member member, Model model) {	
		if(member.getId() == null || member.getId().equals("")) {
			String msg = "";
			msg = "로그인후 이용해 주세요";
			model.addAttribute("msg", msg);
			return "main";
		}
		
		return "bank";
	}
	
	@GetMapping("modal")
	public String modal(Member member , Model model) {
		
		if(member.getId() == null || member.getId().equals("")) {
			String msg = "";
			msg = "로그인후 이용해 주세요";
			model.addAttribute("msg", msg);
			return "main";
		}
		else
			{Member pointMember = memberservice.pointCheck(member);
		
			model.addAttribute("pointMember", pointMember);
		
			return "modal";}
}

}