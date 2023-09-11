package team.co.kr.entity;

import java.sql.Date;

import lombok.Data;


//������,getter, setter, toString �ڵ����� ������ش�.
@Data
public class BoardVO {
	private Long bno;
	private String title;
	private String content;
	private String writer;
	private Date writerDate;
	private Long hit;

	
	
}
