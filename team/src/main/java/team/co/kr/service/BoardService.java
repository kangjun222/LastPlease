package team.co.kr.service;

import java.util.List;

import com.webjjang.util.page.PageObject;

import team.co.kr.entity.BoardVO;

public interface BoardService {
	//list
	public List<BoardVO> list(PageObject pageObject)throws Exception;
	
	//view
	public BoardVO view(Long bno, int inc) throws Exception;
	
	
	//write
	public Integer write(BoardVO vo) throws Exception;

	//update
	public Integer update(BoardVO vo) throws Exception;

	//delete
	public Integer delete(BoardVO vo) throws Exception;

	/* public Integer increase(BoardVO vo) throws Exception; */

	

	
}
