package team.co.kr.mapper;

import org.apache.ibatis.annotations.Mapper;

import team.co.kr.entity.Member;

@Mapper
public interface memberMapper {
	int joinmember(Member member);	
	Member loginmember(Member member);
	int checkId(Member member);
	int bank(Member member);
	
}