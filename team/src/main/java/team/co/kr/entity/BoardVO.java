package team.co.kr.entity;

import java.sql.Date;

import lombok.Data;


//생성자,getter, setter, toString 자동으로 만들어준다.
@Data
public class BoardVO {
	private Long bno;
	private String title;
	private String content;
	private String writer;
	private Date writerDate;
	private Long hit;

	
	
}
