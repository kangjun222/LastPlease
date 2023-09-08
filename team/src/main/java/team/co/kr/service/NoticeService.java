package team.co.kr.service;

import java.util.List;


import team.co.kr.entity.NoticeVO;


public interface NoticeService {
	
	//list
	public List<NoticeVO> list()throws Exception;
	
	
	public NoticeVO noti(Long bno, int inc) throws Exception;
}
