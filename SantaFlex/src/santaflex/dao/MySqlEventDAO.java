package santaflex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import santaflex.annotation.Component;
import santaflex.vo.Event;

@Component("eventDAO")
public class MySqlEventDAO implements EventDAO{
	DataSource ds;

	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}

	@Override
	public List<Event> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sqlSelect = "SELECT * FROM event";

		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);

			ArrayList<Event> event = new ArrayList<Event>();
			while(rs.next()) {
				event.add(new Event()
						.setId(rs.getString("Id"))
						.setName(rs.getString("EventName"))
						.setEventDate(rs.getString("EventDate"))
						.setReceiver(rs.getString("Receiver"))
						.setLocation(rs.getString("Location"))
						.setContent(rs.getString("CONTENT"))
						.setRegDate(rs.getString("REGDATE")));
			}

			return event;
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				throw e;
			}

			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}

			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				throw e;
			}
		}
	}


	@Override
	   public int insert(Event event) throws Exception {
	      Connection connection = null;
	      PreparedStatement stmt = null;

	/*
	 *    regDate  자동으로 요일 추가하는 거 설정하기
	 *    
	 *    ALTER TABLE event
	      MODIFY
	      `date` datetime DEFAULT CURRENT_TIMESTAMP
	 * 
	 * 
	 */    
	      
	      String sqlInsert = "INSERT INTO event(ID, EventName, EventDate, Receiver, Location, CONTENT, regDate)" +
	            "VALUES(?, ?, ?, ?, ?, ?, default)";

	      try {
	         connection = ds.getConnection();
	         stmt = connection.prepareStatement(sqlInsert);
	         stmt.setString(1, event.getId());
	         stmt.setString(2, event.getName());
	         stmt.setString(3, event.getEventDate());
	         stmt.setString(4, event.getReceiver());
	         stmt.setString(5, event.getLocation());
	         stmt.setString(6, event.getContent());
	         

	         return stmt.executeUpdate();
	      } catch(Exception e) {
	         throw e;
	      } finally {
	         try {
	            if(stmt != null) {
	               stmt.close();
	            }
	         } catch(Exception e) {
	            throw e;
	         }

	         try {
	            if(connection != null) {
	               connection.close();
	            }
	         } catch(Exception e) {
	            throw e;
	         }
	      }
	   }

	@Override
	public Event selectOne(String id) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;

		String sqlSelectOne = "SELECT * FROM event WHERE Id=" + id;

		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				return new Event()
						.setId(rs.getString("Id"))
						.setName(rs.getString("EventName"))
						.setEventDate(rs.getString("EventDate"))
						.setReceiver(rs.getString("Receiver"))
						.setLocation(rs.getString("Location"))
						.setContent(rs.getString("CONTENT"))
						.setRegDate(rs.getString("REGDATE"));
			} else {
				throw new Exception("해당 번호의 프로젝트를 찾을 수 없습니다.");
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				throw e;
			}

			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}

			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				throw e;
			}
		}
	}

	public int update(Event event) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;

		String sqlUpdate = "UPDATE event SET RECEIVER=?, LOCATION=? CONTENT=? WHERE Id= ?";

		try {
			connection = ds.getConnection();
			stmt.setString(1, event.getId());
			stmt.setString(2, event.getName());
			stmt.setString(3, event.getEventDate());
			stmt.setString(4, event.getReceiver());
			stmt.setString(5, event.getLocation());
			stmt.setString(6, event.getContent());
			stmt.setString(7, event.getRegDate());

			return stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}

			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				throw e;
			}
		}
	}

	@Override
	public int delete(String id) throws Exception {
		Connection connection = null;
		Statement stmt = null;

		String sqlDelete = "DELETE FROM event WHERE ID=" + id;

		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			return stmt.executeUpdate(sqlDelete);
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}

			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				throw e;
			}
		}
	}
}
