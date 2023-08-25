package team.co.kr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.co.kr.entity.Member;
import team.co.kr.mapper.memberMapper;
import tram.co.kr2.mapper.memberMapper2;

@Service
public class memberService {
	
	@Autowired
	private memberMapper membermapper;
	
	private memberMapper2 membermapper2;


	
	
	//���ۿ� ��������� �Ѱ��ִ¸޼ҵ�
	public int join(Member member) {
		int result = membermapper.joinmember(member);
		
		return result;
	}
	public int login(Member login) {
		int result= membermapper2.loginmember(login);
		
		return  result;
	}


}
