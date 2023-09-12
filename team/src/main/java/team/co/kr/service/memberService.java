package team.co.kr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.co.kr.entity.Cart;
import team.co.kr.entity.Member;
import team.co.kr.mapper.memberMapper;

@Service
public class memberService {
	
	@Autowired
	private memberMapper membermapper;
		
	
	//占쏙옙占쌜울옙 占쏙옙占쏙옙占쏙옙占쏙옙占� 占싼곤옙占쌍는메소듸옙
	public int join(Member member) {
		int result = membermapper.joinmember(member);
		
		return result;
	}
	public Member login(Member login) {
		Member result= membermapper.loginmember(login);
		
		return  result;
	}
	
	public int checkId(Member member) {
		return membermapper.checkId(member);
	}
	public int bank(Member member) {
		return membermapper.bank(member);	
	}
	
	public int addCart(Cart cart) {
		return membermapper.addCart(cart);
	}
	
	public List<Cart> cartList(Cart cart){
		return membermapper.cartList(cart);
	}
	public int deletes (Cart cart) {
		return membermapper.deletes(cart);
	}
	public int checkitemname(Cart cart) {
		return membermapper.checkitemname(cart);
	}

}

