package team.co.kr.mapper;

import java.util.List;


import team.co.kr.entity.NoticeVO;

public interface NoticeMapper {
	// list
	public List<NoticeVO> list();
	//ï¿½Ûºï¿½ï¿½ï¿½
	public NoticeVO noti(Long bno);
	
	//ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½È¸ ï¿½ï¿½ï¿½ï¿½
	public Integer increase(Long bno);
	
    String getURLByBno(Long bno); // URLÀ» °¡Á®¿À´Â ¸Þ¼­µå Ãß°¡
	
}
