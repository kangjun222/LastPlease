package team.co.kr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/maincontroller")
public class MainController {

	@GetMapping("/gostore")
	public String gostore() {
		return "store";
	}

	@GetMapping("/intro")
	public String intro() {
		return "overview";
	}

	@GetMapping("/addr")
	public String addr() {
		return "overview2";
	}
	@GetMapping("/artistcontrollermain")
	public String artistcontrollermain() {
		return "artistmain";
	}
	@GetMapping("/guide")
	public String guide() {
		return "guide1";
	}
	@GetMapping("/guidedo")
	public String guidedo() {
		return "guide2";
	}
	
	
	

}
