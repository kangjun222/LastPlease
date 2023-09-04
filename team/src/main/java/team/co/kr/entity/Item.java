package team.co.kr.entity;

import lombok.Data;

@Data
public class Item {
	private int idx;
	private String itemname;
	private int itemprice;
	private String itemimg;
	private int itemstock;
	private String itemartist;
}
