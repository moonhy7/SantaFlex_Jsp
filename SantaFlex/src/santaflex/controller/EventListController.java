package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.dao.EventDAO;

@Component("/santa/7-3.event_list.do")
public class EventListController implements Controller {
	EventDAO eventDAO;
	
	public EventListController setProjectDAO(EventDAO eventDAO) {
		this.eventDAO = eventDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		model.put("santas", eventDAO.selectlist());
		return "/santa/7-3.event_list.jsp";
	}
}

