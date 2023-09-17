package team.co.kr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import team.co.kr.entity.Audition;
import team.co.kr.entity.Item;
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
	
	@ResponseBody
	@PostMapping("/guide2")
	public void guide2(Audition aud, Model model) {
		
		System.out.println(aud);
	
		int audition=auditonservice.audition(aud);		
	}
	
	@ResponseBody
	@PostMapping(value="/uploadimg", produces="text/html;charset=euc-kr")
	public String uploadimg(Item item , HttpServletRequest req , HttpServletResponse response) throws IOException {
		String imgname = auditonservice.uploadimg(req);
	
		return imgname;
	}
	
	@GetMapping("/auditionlist")
	public String auditionlist(Model model) {
		List<Audition> aud = auditonservice.auditionlist();
		
		model.addAttribute("auditionlist", aud);
		
		return "masterAudition";
	}
	
	@GetMapping("/detailAudition")
	public String detailAudition(Audition aud , Model model) {
		Audition detailAudition = auditonservice.detailAudition(aud);
		
		model.addAttribute("detailAudition", detailAudition);
		
		return "detailAudition";
	}
	
	@ResponseBody
	@GetMapping(value="/pass", produces="text/html;charset=euc-kr")
	public String pass(Audition aud) {
		System.out.println(aud);
		int result = auditonservice.pass(aud);
		
		String msg = "";
		
		if(result == 1) {
			msg = aud.getPass();
		}
		
		return msg;
	}
	
	
}
