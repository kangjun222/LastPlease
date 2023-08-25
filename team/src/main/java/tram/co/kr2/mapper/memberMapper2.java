package tram.co.kr2.mapper;


import team.co.kr.entity.Member;


import org.apache.ibatis.annotations.Mapper;
	

//로그인
	@Mapper
	public interface memberMapper2{
		int  loginmember(Member login);
	}


