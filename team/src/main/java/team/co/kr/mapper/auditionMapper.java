package team.co.kr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import team.co.kr.entity.Audition;

@Mapper
public interface auditionMapper {
	int audition(Audition aud);
	List<Audition> auditionlist();
	Audition detailAudition(Audition aud);
	int pass(Audition aud);
}
