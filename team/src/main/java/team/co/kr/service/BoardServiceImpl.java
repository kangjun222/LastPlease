package team.co.kr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.webjjang.util.page.PageObject;

import lombok.Data;
import team.co.kr.entity.BoardVO;
import team.co.kr.mapper.BoardMapper;

//�ڵ����� - @Controller, @Service, @Repository, @Component, @Advice, @RestController 
//servlet-context.xml, root-context.xml �� �����Ǿ� �־���Ѵ�.
@Service
// Qualifier�̶�? ������̼�, ������ Ÿ������ �����ϰų� �����ؾ� �� �� �߻��ϴ� ������ �浹�� �ذ��ϱ� ���� ��.
//������ Ÿ���� ��ü�� �ִ� ��� ����
@Qualifier("boardServiceImpl")
//������ getter, setter, to String �� �ڵ������Ǳ����� data ��
@Data
public class BoardServiceImpl implements BoardService{
	//�ڵ� di - @Autowired, @Inject
	@Inject
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> list(PageObject pageObject) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("BoardService.list()");
		//전체 데이처 개수 가져오기 + 화면에 출력할 페이지 정보를 세팅(setTotalRow)
		pageObject.setTotalRow(mapper.getTotalRow(pageObject));
		System.out.println("BoardService.list().pageObject - " + pageObject);
		return mapper.list(pageObject);
	}

	//write
	@Override
	public Integer write(BoardVO vo) throws Exception {
		return mapper.write(vo);
	}

	@Override
	public BoardVO view(Long bno, int inc) throws Exception {
		// TODO Auto-generated method stub
		if(inc == 1)mapper.increase(bno);
		return mapper.view(bno);
		
	}

	@Override
	public Integer update(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.update(vo);
	}

	@Override
	public Integer delete(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.delete(vo);
	}

	
}


