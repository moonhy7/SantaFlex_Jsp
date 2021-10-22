package santaflex.controller;

import java.util.Map;



import santaflex.bind.DataBinding;
import santaflex.dao.MySqlMemberDAO;
import santaflex.annotation.Component;
import santaflex.vo.Member;


			
@Component("/santa/5-2.singUp.do")
public class MemberAddController implements Controller, DataBinding {
	MySqlMemberDAO memberDAO = null;
	
	public MemberAddController setMemberDAO(MySqlMemberDAO memberDAO) {
		this.memberDAO = memberDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		
		return new Object[] {
				"member", santaflex.vo.Member.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Member member = (Member)model.get("member");
		System.out.println(member.getId());
//		System.out.println("==========="+member.getId());
//		System.out.println("member=========="+member);
//		System.out.println("member=========="+model.get("member"));
		

		Member chkMember = memberDAO.chkDuplicate(member.getId());
		
		
		if(chkMember == null ) {
			
			memberDAO.insert(member);
			System.out.println("chkMember == null");
			model.put("msg", "singUpOk");
			
			return "redirect:5-1.login.jsp";
		
		} else {
			System.out.println("중복일떄");
			model.put("msg", "signUpError");
			
			return "/santa/5-2.signUp.jsp";
		}
	}
}