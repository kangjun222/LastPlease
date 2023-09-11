package team.co.kr.entity;

import java.sql.Date;



import lombok.Data;

@Data
public class NoticeVO {
	private Long bno;
	private String tittle;
	private String url;
	private Date date3;
	private Long hit;
	
	}

