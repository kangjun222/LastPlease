package team.co.kr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import lombok.Data;
import team.co.kr.entity.Item;
import team.co.kr.entity.NoticeVO;
import team.co.kr.mapper.NoticeMapper;
@Service
//Qualifier占싱띰옙? 占쏙옙占쏙옙占쏙옙抉占�, 占쏙옙占쏙옙占쏙옙 타占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싹거놂옙 占쏙옙占쏙옙占쌔억옙 占쏙옙 占쏙옙 占쌩삼옙占싹댐옙 占쏙옙占쏙옙占쏙옙 占썸돌占쏙옙 占쌔곤옙占싹깍옙 占쏙옙占쏙옙 占쏙옙.
//占쏙옙占쏙옙占쏙옙 타占쏙옙占쏙옙 占쏙옙체占쏙옙 占쌍댐옙 占쏙옙占� 占쏙옙占쏙옙
@Qualifier("noticeServiceImpl")
//占쏙옙占쏙옙占쏙옙 getter, setter, to String 占쏙옙 占쌘듸옙占쏙옙占쏙옙占실깍옙占쏙옙占쏙옙 data 占쏙옙
@Data
public class NoticeServiceImpl  implements NoticeService{
	
	@Inject
	private NoticeMapper mapper;
	
	
	@Override
	public List<NoticeVO> list() throws Exception {
		// TODO Auto-generated method stub
		return mapper.list();
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
