package team.co.kr.mapper;

import java.util.List;

import com.webjjang.util.page.PageObject;

import team.co.kr.entity.BoardVO;

public interface BoardMapper {
	// list
	public List<BoardVO> list(PageObject pageObject);

	//페이지처리하는곳 //검색한데이터가 있으면 페이지 처리를 해서 해야되므로()이안에 넣어야됨 페이지오브젝을.
	public Long getTotalRow(PageObject pageObject);
	
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