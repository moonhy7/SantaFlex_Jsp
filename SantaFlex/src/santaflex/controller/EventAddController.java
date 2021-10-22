package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.bind.DataBinding;
import santaflex.dao.EventDAO;
import santaflex.vo.Event;

@Component("/santa/2.invitation.do")
public class EventAddController implements Controller, DataBinding {
	EventDAO eventDAO;
	
	public EventAddController setProjectDAO(EventDAO eventDAO) {
		this.eventDAO = eventDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"santa", santaflex.vo.Event.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Event event = (Event)model.get("santa");
		if(event.getName() == null) {
			return "/santa/2.invitation.do";
		} else {
			eventDAO.insert(event);
			return "redirect:7-3.event_list.do";
		}
	}
}

