package team.co.kr.entity;

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
	

	
	

	

	public Member(String name, String id, String pwd, String birth, String gender, String email, String phone,
		String addr, String year, String month, String day, String adr, String adrdetail) {
		super();
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.birth = year+month+day;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.addr = adr+" "+adrdetail;
		this.year = year;
		this.month = month;
		this.day = day;
		this.adr = adr;
		this.adrdetail = adrdetail;
		
		
	
	}

	
public class login{
	private String idd;
	private String pwdd;
	
	
	
	public login(String idd, String pwdd) {
		this.idd=idd;
		this.pwdd=pwdd;
		
	}

}
}
	



