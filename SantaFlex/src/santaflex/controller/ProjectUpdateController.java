package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.bind.DataBinding;
import santaflex.dao.ProjectDAO;
import santaflex.vo.QnA;

@Component("/santa/6-3.update.do")
public class ProjectUpdateController implements Controller, DataBinding {
	ProjectDAO projectDAO;
	
	public ProjectUpdateController setProjectDAO(ProjectDAO projectDAO) {
		this.projectDAO = projectDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"no", Integer.class,
				"hit", Integer.class,
				"santa", santaflex.vo.QnA.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		QnA qna = (QnA)model.get("santa");
//		System.out.println(qna.getTitle());
		
		if(qna.getTitle() == null) {
			Integer no = (Integer)model.get("no");
			Integer hit = (Integer)model.get("hit");
			projectDAO.upHit(no, hit);
			QnA detailInfo = projectDAO.selectOne(no);
			model.put("santa", detailInfo);
			return "/santa/6-3.update.jsp";
		} else {
			projectDAO.update(qna);
			return "redirect:6-1.FAQ.do";
		}
	}
}
