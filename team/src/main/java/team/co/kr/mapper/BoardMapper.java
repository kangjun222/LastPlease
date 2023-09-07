package team.co.kr.mapper;

import java.util.List;

import team.co.kr.entity.BoardVO;

public interface BoardMapper {
	// list
	public List<BoardVO> list();

	// view 셀렉태그
	public BoardVO view(Long bno);

	// increase 리턴타입이 업데이트 경우 인티저
	public Integer increase(Long bno);

	// write
	public Integer write(BoardVO vo);
	
	// update
	public Integer update(BoardVO vo);
	
	// delete
	public Integer delete(BoardVO vo);


}
//db사용ㅇ하는부분