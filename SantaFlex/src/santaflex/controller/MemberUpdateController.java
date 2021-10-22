package santaflex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import santaflex.annotation.Component;
import santaflex.bind.DataBinding;
import santaflex.dao.MySqlMemberDAO;
import santaflex.vo.Member;

@Component("/santa/7-2.member_modify.do")
public class MemberUpdateController implements Controller, DataBinding {
	MySqlMemberDAO memberDAO = null;
	
	public MemberUpdateController setMemberDAO(MySqlMemberDAO memberDAO) {
		this.memberDAO = memberDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		//key 값과 이름으로 매핑하여 자동으로 생성해야 되는 클래스 타입 지정
		return new Object[] {
				"id", String.class,
				"member", santaflex.vo.Member.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Member member = (Member)model.get("member");
//		System.out.println("member");

		if(member.getId() == null) {
			String id = member.getId();
			Member detailInfo = memberDAO.selectOne(id);			
			
			model.put("member", detailInfo);
			return "/santa/7-1.profile.jsp";
		} else {
		      System.out.println("11111111"+member.getEmail());
			memberDAO.update(member);
			HttpSession session = (HttpSession)model.get("session");
			Member modifiedMember = memberDAO.exist(member.getId(), member.getPwd());
			session.setAttribute("Member", modifiedMember);
			return "redirect:7-1.profile.jsp";
		}
	}

}