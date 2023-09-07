package team.co.kr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

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
	public List<BoardVO> list() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("BoardService.list()");
		return mapper.list();
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


