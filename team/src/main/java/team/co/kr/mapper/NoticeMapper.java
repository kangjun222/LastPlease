package team.co.kr.mapper;

import java.util.List;

import team.co.kr.entity.Item;
import team.co.kr.entity.NoticeVO;

public interface NoticeMapper {
	// list
	public List<NoticeVO> list();
	//�ۺ���
	public NoticeVO noti(Long bno);
	
	//������ ��ȸ ����
	public Integer increase(Long bno);
	
	
	//준형
    public NoticeVO url(String content);
	
	
	

}
