package team.co.kr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.webjjang.util.page.PageObject;

import lombok.Data;
import team.co.kr.entity.Item;
import team.co.kr.entity.NoticeVO;
import team.co.kr.mapper.NoticeMapper;
@Service
@Qualifier("noticeServiceImpl")
@Data
public class NoticeServiceImpl  implements NoticeService{
	
	@Inject
	private NoticeMapper mapper;
	
	
	@Override
	public List<NoticeVO> list(PageObject pageObject) throws Exception {
		// TODO Auto-generated method stub
		pageObject.setTotalRow(mapper.getTotalRow(pageObject));
		return mapper.list(pageObject);
	}
	@Override
	public NoticeVO noti(Long bno, int inc) {
		// TODO Auto-generated method stub
		if(inc == 1)mapper.increase(bno);
		return mapper.noti(bno);
	}
	

	/*
	 * public NoticeVO url(String content ) { return mapper.url(content); }
	 */
	@Override
	public String getURLByBno(Long bno) {
		return mapper.getURLByBno(bno);
		// TODO Auto-generated method stub
		
	}
	@Override
	public NoticeVO url(String content) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	


}
