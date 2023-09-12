package team.co.kr.service;

import java.util.List;

import com.webjjang.util.page.PageObject;

import team.co.kr.entity.Item;
import team.co.kr.entity.NoticeVO;


public interface NoticeService {
	
	//list
	public List<NoticeVO> list(PageObject pageObject)throws Exception;
	
	String getURLByBno(Long bno); // URL�쓣 媛��졇�삤�뒗 硫붿꽌�뱶 異붽�

	public NoticeVO noti(Long bno, int inc) throws Exception;

	//餓ο옙占쎌굨
	public NoticeVO url(String url)throws Exception;



}
