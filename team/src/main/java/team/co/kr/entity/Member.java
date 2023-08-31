package team.co.kr.entity;

import java.sql.Date;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import lombok.Data;

@Data
public class Member {
	private String name;
	private String id;
	private String pwd;
	private String birth;
	private String gender;
	private String email;
	private String phone;
	private String addr;
	
	private String year;
	private String month;
	private String day;
	
	private String adr;
	private String adrdetail;
	
	
	public void makebirth() {
		this.birth = year+month+day;
	}
	
	public void makeAddr() {
		this.addr = adr+" "+adrdetail;
	}
}	
	



