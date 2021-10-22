package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.bind.DataBinding;
import santaflex.dao.EventDAO;
import santaflex.vo.Event;

@Component("/santa/7-5.event_modify.do")
public class EventUpdateController implements Controller, DataBinding {
	EventDAO eventDAO;
	
	public EventUpdateController setProjectDAO(EventDAO eventDAO) {
		this.eventDAO = eventDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"name", String.class,
				"santa", santaflex.vo.Event.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Event event = (Event)model.get("santa");
		System.out.println(event.getName());
		
		if(event.getName() == null) {
			String id = event.getId();

			Event detailInfo = eventDAO.selectOne(id);
			model.put("santa", detailInfo);
			return "/santa/7-5.event_modify.jsp";
		} else {
			eventDAO.update(event);
			return "redirect:7-3.event_list.do";
		}
	}
}

