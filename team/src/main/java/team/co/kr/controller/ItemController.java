package team.co.kr.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import team.co.kr.entity.Item;
import team.co.kr.entity.Member;
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
	@PostMapping("/gosellItem")
	public String gosellItem(Item item,Member member, Model model) {
		
		//상품이름 상품가격 회원 아이디 정보가 넘어온다.
		
		Map<String, Object> map = new HashMap<String, Object>();
		String msg = "";
		
		
		
		map.put("item", item);
		map.put("member", member);	
		
		//db에 한번들어가서 현재 나의 잔액 - 상품금액의 값을 가져온다
		int myMember = itemservice.mybank(map);
		
		if(myMember <= 0) {
			msg = "잔액이 부족합니다";
			model.addAttribute("msg", msg);
			return "bank";
		}
		
		int result = itemservice.buyitem(map);
		
		if(result == 1) {
			msg = item.getItemname() + " 구매가 완료되었습니다.";
			model.addAttribute("msg", msg);
		}
		
	    return "main";
		
			
	}
	
}
