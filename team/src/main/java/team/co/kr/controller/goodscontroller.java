package team.co.kr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Goodscontroller")
public class goodscontroller {


		@GetMapping("/gonewjins")
		public String newjinsgoods() {
			return "newjinsgoods";
		}
		@GetMapping("/goseventeen")
		public String seventeengoods() {
			return "seventeen";
		}
		@GetMapping("/goiu")
		public String iugoods() {
			return "iu";
		}
		@GetMapping("/gokarina")
		public String karinagoods() {
			return "karina";
		}
		@GetMapping("/goakmu")
		public String akmugoods() {
			return "akmu";
		}

	}

