package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.bind.DataBinding;
import santaflex.dao.ProjectDAO;

@Component("/santa/delete.do")
public class ProjectDeleteController implements Controller, DataBinding {
	ProjectDAO projectDAO;
	
	public ProjectDeleteController setProjectDAO(ProjectDAO projectDAO) {
		this.projectDAO = projectDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
			"no", Integer.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer no = (Integer)model.get("no");
		projectDAO.delete(no);
		
		return "redirect:6-1.FAQ.do";
	}
}
