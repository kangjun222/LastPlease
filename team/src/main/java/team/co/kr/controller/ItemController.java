package team.co.kr.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import team.co.kr.entity.Item;
import team.co.kr.service.ItemService;

@Controller
@RequestMapping("item")
public class ItemController {
	
	@Autowired
	private ItemService itemservice;
	
	
	@GetMapping("/addItemForm")
	public String addItemForm() {
		return "masteritem";
	}
	
	@ResponseBody
	@PostMapping(value="/uploadimg", produces="text/html;charset=euc-kr")
	public String uploadimg(Item item , HttpServletRequest req , HttpServletResponse response) throws IOException {
		String imgname = itemservice.uploadimg(req);
	
		return imgname;
	}
	
	@ResponseBody
	@PostMapping("/insertItem")
	public void insertItem(Item item) {
		System.out.println(item);
		int result = itemservice.insertItem(item);
	}
	
}
