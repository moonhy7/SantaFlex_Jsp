package santaflex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import santaflex.annotation.Component;
import santaflex.vo.QnA;

@Component("projectDAO")
public class MySqlProjectDAO implements ProjectDAO{
	DataSource ds;

	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}

	@Override
	public List<QnA> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sqlSelect = "SELECT * FROM qna ORDER BY NO DESC";

		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);

			ArrayList<QnA> qna = new ArrayList<QnA>();
			while(rs.next()) {
				qna.add(new QnA()
						.setNo(rs.getInt("NO"))
						.setTitle(rs.getString("TITLE"))
						.setContent(rs.getString("CONTENT"))
						.setRegDate(rs.getDate("REGDATE"))
						.setHit(rs.getInt("HIT")));   
			}

			return qna;
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
	public int insert(QnA qna) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;

		String sqlInsert = "INSERT INTO qna(NO, TITLE, CONTENT, REGDATE)" +
				"VALUES((SELECT IFNULL(MAX(NO), 0) + 1 FROM QNA B), ?, ?, NOW())";

		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, qna.getTitle());
			stmt.setString(2, qna.getContent());

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
	public QnA selectOne(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;

		String sqlSelectOne = "SELECT * FROM qna WHERE NO=" + no;

		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				return new QnA()
						.setNo(rs.getInt("NO"))
						.setTitle(rs.getString("TITLE"))
						.setContent(rs.getString("CONTENT"))
						.setRegDate(rs.getDate("REGDATE"))
						.setHit(rs.getInt("HIT"));
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

	public int update(QnA qna) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;

		String sqlUpdate = "UPDATE qna SET TITLE=?, CONTENT=? WHERE no= ?";

		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, qna.getTitle());
			stmt.setString(2, qna.getContent());
			stmt.setInt(3, qna.getNo());

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
	public int delete(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;

		String sqlDelete = "DELETE FROM qna WHERE NO=" + no;

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

	// 조회수 증가 메서드
	@Override
	public int upHit(int no, int hit) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlupHit ="update qna set hit = ? where no = " + no;

		try {
			connection = ds.getConnection();

			stmt = connection.prepareStatement(sqlupHit);
			stmt.setInt(1, hit+1);

			return stmt.executeUpdate();

		} catch (Exception e) {
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
