package team.co.kr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String guidedo(String msg , Model model) {
		model.addAttribute("msg", msg);
		
		return "guide2";
	}
	@GetMapping("/ceo")
	public String ceo() {
		return "ceo1";
	}
	@GetMapping("/idfind")
	public String idfind() {
		return "findidpw";
	}
	@GetMapping("/intro1")
	public String intro1() {
		return "/common/intro";
	}
	@GetMapping("/use1")
	public String use1() {
		return "/common/use1";
	}


}
