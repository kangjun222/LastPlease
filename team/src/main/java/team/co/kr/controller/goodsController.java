package team.co.kr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import team.co.kr.entity.Item;
import team.co.kr.service.artistService;

@Controller
@RequestMapping("/Goodscontroller")
public class goodsController {
		
		@Autowired
		private artistService artistservice;

		@GetMapping("/gonewjins")
		public String newjinsgoods(String artist, Model model) {
			List<Item> itmes = artistservice.gonewjins(artist);
			model.addAttribute("items", itmes);
			
			return "newjinsgoods";
		}
		@GetMapping("/goseventeen")
		public String seventeengoods(String artist, Model model) {
			List<Item> items = artistservice.gonewjins(artist);
			model.addAttribute("items", items);
			return "seventeen";
		}
		@GetMapping("/goiu")
		public String iugoods(String artist, Model model) {
			List<Item> items = artistservice.gonewjins(artist);
			model.addAttribute("items", items);
			
			return "iu";
		}
		@GetMapping("/gokarina")
		public String karinagoods(String artist, Model model) {
			List<Item> items = artistservice.gonewjins(artist);
			model.addAttribute("items", items);
			return "karina";
		}
		@GetMapping("/goakmu")
		public String akmugoods(String artist, Model model) {
			List<Item> items = artistservice.gonewjins(artist);
			model.addAttribute("items", items);
			return "akmu";
		}
		@GetMapping("/goiteam")
		public String iteam() {
			return "iteamreview1";
	}
}
