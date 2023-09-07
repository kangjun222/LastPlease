package team.co.kr.mapper;

import java.util.List;

import team.co.kr.entity.BoardVO;

public interface BoardMapper {
	// list
	public List<BoardVO> list();

	// view �����±�
	public BoardVO view(Long bno);

	// increase ����Ÿ���� ������Ʈ ��� ��Ƽ��
	public Integer increase(Long bno);

	// write
	public Integer write(BoardVO vo);
	
	// update
	public Integer update(BoardVO vo);
	
	// delete
	public Integer delete(BoardVO vo);


}
//db��뤷�ϴºκ�