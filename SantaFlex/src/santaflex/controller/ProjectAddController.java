package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.bind.DataBinding;
import santaflex.dao.ProjectDAO;
import santaflex.vo.QnA;


@Component("/santa/6-2.QnA.do")
public class ProjectAddController implements Controller, DataBinding {
	ProjectDAO projectDAO;
	
	public ProjectAddController setProjectDAO(ProjectDAO projectDAO) {
		this.projectDAO = projectDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"santa", santaflex.vo.QnA.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		QnA qna = (QnA)model.get("santa");
		if(qna.getTitle() == null) {
			return "/santa/6-2.QnA.do";
		} else {
			projectDAO.insert(qna);
			return "redirect:6-1.FAQ.do";
		}
	}
}
