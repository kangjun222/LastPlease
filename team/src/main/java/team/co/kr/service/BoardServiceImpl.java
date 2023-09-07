package team.co.kr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import lombok.Data;
import team.co.kr.entity.BoardVO;
import team.co.kr.mapper.BoardMapper;

//자동생성 - @Controller, @Service, @Repository, @Component, @Advice, @RestController 
//servlet-context.xml, root-context.xml 에 설정되어 있어야한다.
@Service
// Qualifier이란? 어노테이션, 동일한 타입으로 생성하거나 주입해야 할 때 발생하는 의존성 충돌을 해결하기 위한 것.
//동일한 타입의 객체가 있는 경우 설정
@Qualifier("boardServiceImpl")
//생성자 getter, setter, to String 등 자동생성되기위해 data 씀
@Data
public class BoardServiceImpl implements BoardService{
	//자동 di - @Autowired, @Inject
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


