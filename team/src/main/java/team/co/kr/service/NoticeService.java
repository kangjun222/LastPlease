package team.co.kr.service;

import java.util.List;

import team.co.kr.entity.Item;
import team.co.kr.entity.NoticeVO;


public interface NoticeService {
	
	//list
	public List<NoticeVO> list()throws Exception;
	
	
	public NoticeVO noti(Long bno, int inc) throws Exception;

	//준형
	public NoticeVO url(String content)throws Exception;
	


	


	
	
}
