package team.co.kr.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import team.co.kr.entity.Cart;
import team.co.kr.entity.Member;
import team.co.kr.service.memberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private memberService memberservice;

	@GetMapping("/gologin")
	public String gologin() {
		return "login";
	}

	@GetMapping("/gojoin")
	public String gojoin() {
		return "join";
	}// 蹂댄샇媛��뜙�맂�떎�뒗寃� 二쇱냼李쎌뿉 �궡媛��벖寃� �젙蹂닿� �엯�젰�맖
	
	@ResponseBody
	@PostMapping("/join")
	public int join(Member member) {
		
		member.makeAddr();
		member.makebirth();
		
		System.out.println(member);
		int result = memberservice.join(member);
		
		return result;
	}
	
	@PostMapping("/login")
	public String login(Member login , Model model , HttpSession session) {
		Member result = memberservice.login(login);
		
		System.out.println(result);
		
		String msg = "";
		if(result != null) {
			session.setAttribute("mem",result);
			msg = "로그인이 완료 되었습니다";
			model.addAttribute("msg", msg);
		}
		else {
			msg = "로그인 실패";
			model.addAttribute("msg", msg);
		}
		return "main";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session , Model model) {
		session.invalidate();
		model.addAttribute("msg","로그아웃되었습니다");
				
		return "main";
	}

	// GETMAPPING 蹂대떎 蹂댄샇媛� �릺�꽌 �궡媛� �엯�젰�븳寃껋씠 二쇱냼李쎌뿉 �븞�굹�샂
	
	@ResponseBody
	@GetMapping("/checkId")
	public int checkId(Member member) {
		
		return memberservice.checkId(member);
	}
	
	
	@ResponseBody
	@PostMapping("/idSearch")
	public Member idSearch(Member member , Model model) {
	
		Member searchMember =  memberservice.idSearch(member);
		
		return searchMember;
	}
	
	@ResponseBody
	@GetMapping(value="/addCart",produces="application/text;charset=UTF-8")
	public String addCart(Cart cart, Model model) {
		
		String msg = "";
		int result = memberservice.checkitemname(cart);
		if(result==1) {
			msg = "이미 등록된 상품입니다.";
			return msg;
		}
		
		System.out.println(cart);
		result = memberservice.addCart(cart);
	
		
		
		
		if(result == 1) {
			msg = "장바구니 등록이 완료되었습니다.";
		}
		else {
			msg = "장바구니 등록이 실패하였습니다.";
		}
		return msg;
	}
	
	@GetMapping("/cartList")
	public String cartList(Cart cart , Model model) {
		List<Cart> carts = memberservice.cartList(cart);
		
		model.addAttribute("carts", carts);
		
		return "Mypage";
	}
	
	@ResponseBody
	@GetMapping(value="/deletes",produces="application/text;charset=UTF-8")
		public String cartdelete(Cart cart) {
		int result = memberservice.deletes(cart);
		String msg = "";
		if(result == 1) {
			msg = "삭제가 완료되었습니다";			
		}
		return msg;
	}
}