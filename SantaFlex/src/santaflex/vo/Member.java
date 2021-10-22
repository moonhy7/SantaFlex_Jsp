package santaflex.vo;

import java.util.Date;
/*
 * VO(Value Object) = DTO(Data Transfer Object)
 * ���� ��� �����ϴ� ��ü
 * 
 * ���̺��̳� ��� 1:1 ���� ����
 * or
 * �������� ������ ������� 1:1 ���� ����
 * 
 */

/*
 * 1. setter void ��
 * 		member.setNo(10);
 * 		member.setName("ȫ�浿");
 * 		member.setEmail("s1@test.com");
 * 
 * 2. setter ��ü ���� -> chain������ setter ȣ���� ��������
 * 		member.setNo(10)
 * 			  .setName("ȫ�浿");
 * 			  .setEmail("s1@test.com");
 * 		
 */

public class Member {
	protected String id;
	protected String name;
	protected String pwd;
	protected String email;
	protected String birthday;
	protected String tel;
	protected String address;
	
	public String getId() {
		return id;
	}
	
	public Member setId(String id) {
		this.id = id;
		return this;
	}

	public String getName() {
		return name;
	}
	
	public Member setName(String name) {
		this.name = name;
		return this;
	}
	
	public String getPwd() {
		return pwd;
	}
	public Member setPwd(String pwd) {
		this.pwd = pwd;
		return this;
	}
	
	public String getEmail() {
		return email;
	}
	
	public Member setEmail(String email) {
		this.email = email;
		return this;
	}
	
	public String getBirthday() {
		return birthday;
	}
	
	public Member setBirthday(String birthday) {
		this.birthday = birthday;
		return this;
	}
	
	public String getTel() {
		return tel;
	}
	
	public Member setTel(String tel) {
		this.tel = tel;
		return this;
	}
	
	public String getAddress() {
		return address;
	}
	
	public Member setAddress(String address) {
		this.address = address;
		return this;
	}
	
//	public Member setString(String string) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}