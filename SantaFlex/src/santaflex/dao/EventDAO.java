package santaflex.dao;

import java.util.List;

import santaflex.vo.Event;

public interface EventDAO {
	List<Event> selectlist() throws Exception;
	int insert(Event event) throws Exception;
	Event selectOne(String id) throws Exception;
	int update(Event event) throws Exception;
	int delete(String id) throws Exception;
}
