package team.co.kr.service;

import java.util.List;


import team.co.kr.entity.Item;
import team.co.kr.entity.NoticeVO;


public interface NoticeService {
	
	//list
	public List<NoticeVO> list()throws Exception;
	
	

	 String getURLByBno(Long bno); // URL을 가져오는 메서드 추가

	public NoticeVO noti(Long bno, int inc) throws Exception;

	//以��삎
	public NoticeVO url(String content)throws Exception;



}
