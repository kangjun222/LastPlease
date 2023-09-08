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
//Qualifier�̶�? ������̼�, ������ Ÿ������ �����ϰų� �����ؾ� �� �� �߻��ϴ� ������ �浹�� �ذ��ϱ� ���� ��.
//������ Ÿ���� ��ü�� �ִ� ��� ����
@Qualifier("noticeServiceImpl")
//������ getter, setter, to String �� �ڵ������Ǳ����� data ��
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
	
	//준형
	public NoticeVO url(String content ) {
		
		return mapper.url(content);
	}
	


}
