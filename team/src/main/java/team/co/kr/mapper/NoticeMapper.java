package team.co.kr.mapper;

import java.util.List;


import team.co.kr.entity.NoticeVO;

public interface NoticeMapper {
	// list
	public List<NoticeVO> list();
	//글보기
	public NoticeVO noti(Long bno);
	
	//데이터 조회 증가
	public Integer increase(Long bno);

}
