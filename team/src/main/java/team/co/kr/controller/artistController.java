package team.co.kr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import team.co.kr.entity.Artist;
import team.co.kr.service.artistService;

@Controller
@RequestMapping("artist")
public class artistController {
	
	@Autowired
	private artistService artistservice;
	
	
	@GetMapping("/profile")
	public String profile(Artist art, Model model) {
		System.out.println(art.getName());
		Artist artist = artistservice.profile(art);
		
		model.addAttribute("artist", artist);
		
		return "profile";
	}
}
