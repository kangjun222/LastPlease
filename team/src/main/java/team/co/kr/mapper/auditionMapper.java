package team.co.kr.mapper;

import org.apache.ibatis.annotations.Mapper;





import team.co.kr.entity.Audition;

@Mapper
public interface auditionMapper {
	int audition(Audition aud);
	
	

}
