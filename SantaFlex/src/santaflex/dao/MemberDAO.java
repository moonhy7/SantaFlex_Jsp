package santaflex.dao;

import java.util.List;

import santaflex.vo.Member;

/*
 * �������̽� ���� ����
 * 
 * Oracle, MySql, MSSql �� DBMS ����� 
 * �� �������̽��� ��ӹ޴� DAO Ŭ������ �����ϵ�
 * �� DBMS Ư���� �°� �����Ͽ� DBMS ��ü�� ���� ��
 * �޼����� ���Ұ� ���� ���� �����ϰ� ó��
 * 
 * */
public interface MemberDAO {
	public List<Member> selectlist() throws Exception;
	public int insert(Member member) throws Exception;
	public int delete(String id) throws Exception;
	public Member selectOne(String id) throws Exception;
	public int update(Member member) throws Exception;
	public Member exist(String id, String pwd) throws Exception;
	public Member chkDuplicate(String id)throws Exception;
}