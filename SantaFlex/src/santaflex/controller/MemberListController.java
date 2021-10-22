package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.dao.MySqlMemberDAO;

@Component("/member/list.do")
public class MemberListController implements Controller {
	/*
	 * DI(Dependency Injection)
	 * 1) Ŭ������ ���յ� ����
	 * 2) MemberDAO �������̽��� �����ϰ� ��ӱ����ϹǷν� �ٸ� DBMS���� ��ȯ ����
	 * 3) ���߿� ������ �ڵ�ȭ �۾��� ���
	 * */
	
	MySqlMemberDAO memberDAO = null;
	
	public MemberListController setMemberDAO(MySqlMemberDAO memberDAO) {
		this.memberDAO = memberDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		//���ϵ� ��ȸ ��� �ʿ� ����
		model.put("memberList", memberDAO.selectlist());
		
		return "/member/MemberList.jsp";
	}
}