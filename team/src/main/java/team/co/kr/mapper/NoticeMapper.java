package team.co.kr.mapper;

import java.util.List;

import com.webjjang.util.page.PageObject;

import team.co.kr.entity.NoticeVO;

public interface NoticeMapper {
	// list
	public List<NoticeVO> list(PageObject pageObject);
	
	public Long getTotalRow(PageObject pageObject);
	
	public NoticeVO noti(Long bno);
	
	
	public Integer increase(Long bno);
	
    String getURLByBno(Long bno); 
	
}
