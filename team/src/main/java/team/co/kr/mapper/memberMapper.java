package team.co.kr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import team.co.kr.entity.Cart;
import team.co.kr.entity.Member;

@Mapper
public interface memberMapper {
	int joinmember(Member member);	
	Member loginmember(Member member);
	int checkId(Member member);
	int bank(Member member);
	int addCart(Cart cart);
	List<Cart> cartList(Cart cart);
	int deletes(Cart cart);
	int checkitemname(Cart cart);
	Member idSearch(Member member);
	Member pwdSearch(Member member);
	Member pointCheck(Member member);
	
}