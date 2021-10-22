package santaflex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import santaflex.annotation.Component;
import santaflex.bind.DataBinding;
import santaflex.dao.MySqlMemberDAO;
import santaflex.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@Component("/santa/5-1.login.do")
public class LoginController implements Controller,DataBinding {
	MySqlMemberDAO memberDAO = null;
	
	public LoginController setMemberDAO(MySqlMemberDAO memberDAO) {
		this.memberDAO = memberDAO;
		return this;
	}
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"loginInfo", santaflex.vo.Member.class
		};
	}
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Member loginInfo = (Member)model.get("loginInfo");
		
		if(loginInfo.getId() == null || loginInfo.getPwd() ==null) {
			HttpSession session = (HttpSession)model.get("session");
			session.setAttribute("Msg", "empt");
			return "redirect:5-1.login.jsp";
		} else {
			Member member = memberDAO.exist(loginInfo.getId(), loginInfo.getPwd());
			
			if(member != null) {
				HttpSession session = (HttpSession)model.get("session");
				session.setAttribute("Member", member);
				return "redirect:7-1.profile.jsp";
			} else {
				HttpSession session = (HttpSession)model.get("session");
				session.setAttribute("Msg", "incorrect");
				return "redirect:5-1.login.jsp";
			}
		}
		
	}

}