package team.co.kr.controller;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import team.co.kr.entity.Audition;
import team.co.kr.service.auditionService;

@Controller
@RequestMapping("/audition")
public class AuditionController {
	
	@Autowired
	private auditionService auditonservice;
	
	
	@GetMapping("/goaudition")
	public String goaudition() {
		return "audition";
	}
	@PostMapping("/guide2")
	public String guide2(Audition aud, Model model, HttpSession session) {
		session.invalidate();
		model.addAttribute("msg","지원이 완료되었습니다");
	
		int audition=auditonservice.audition(aud);
		

		
		
		
		return "guide2";
		
		
		
		
		
	
	
	}
	

}
