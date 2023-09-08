package team.co.kr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import lombok.Data;
import team.co.kr.entity.NoticeVO;
import team.co.kr.mapper.NoticeMapper;
@Service
//Qualifier이란? 어노테이션, 동일한 타입으로 생성하거나 주입해야 할 때 발생하는 의존성 충돌을 해결하기 위한 것.
//동일한 타입의 객체가 있는 경우 설정
@Qualifier("noticeServiceImpl")
//생성자 getter, setter, to String 등 자동생성되기위해 data 씀
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


}
