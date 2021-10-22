package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.dao.ProjectDAO;

@Component("/santa/6-1.FAQ.do")
public class ProjectListController implements Controller {
	ProjectDAO projectDAO;
	
	public ProjectListController setProjectDAO(ProjectDAO projectDAO) {
		this.projectDAO = projectDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		model.put("santas", projectDAO.selectlist());
		return "/santa/6-1.FAQ.jsp";
	}
}
