package santaflex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import santaflex.annotation.Component;
import santaflex.vo.Member;

@Component("memberDAO")
public class MySqlMemberDAO implements MemberDAO {
	/*
	 * Connection connection;
	 * 
	 * //DAO객체는 servlet이 아니기 때문에 servletcontext에 있는 커넥션 직접 접근 불가능
	 * //memberlistServlet에서 커넥션을 객체를 DAO에 주입해줄 것 public void
	 * setConnection(Connection connection) { this.connection = connection; }
	 */
	
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	@Override
	public List<Member> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT * FROM MEMBER ORDER BY MNO ASC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Member> members = new ArrayList<Member>();
			
			while(rs.next()) {
				members.add(new Member()
										.setId(rs.getString("ID"))
										.setName(rs.getString("NAME"))
										.setPwd(rs.getString("PWD"))
										.setEmail(rs.getString("EMAIL"))
										.setBirthday(rs.getString("BIRTHDAY"))
										.setTel(rs.getString("TEL"))
										.setAddress(rs.getString("ADDRESS")));
										
			}
			return members;
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	//MemberAddServlet에서 입력 폼으로 입력받은 데이터를 member객체로 담아서 
	//DAO로 전달할 예정
	@Override
	public int insert(Member member) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		final String sqlInsert = "INSERT INTO MEMBER (ID,NAME,PWD, EMAIL, BIRTHDAY, TEL, ADDRESS)"+
								"VALUES (?,?,?,?,?,?,?)";
			
			try {
				connection = ds.getConnection();
				stmt = connection.prepareStatement(sqlInsert);
				stmt.setString(1, member.getId());
				stmt.setString(2, member.getName());
				stmt.setString(3, member.getPwd());
				stmt.setString(4, member.getEmail());
				stmt.setString(5, member.getBirthday());
				stmt.setString(6, member.getTel());
				stmt.setString(7, member.getAddress());
				result = stmt.executeUpdate();
				System.out.println("인서트 완료");
				System.out.println(result);
			} catch(Exception e) {
				throw e;
			} finally {
				try {
					if(stmt != null) {
						stmt.close();
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
				
				try {
					if(connection != null) {
						connection.close();
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		
		return result;
	}
	
	@Override
	public int delete(String id) throws Exception {
		int result = 0;
		Connection connection = null;
		Statement stmt = null;
		final String sqlDelete = "DELETE FROM MEMBER WHERE ID=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			((PreparedStatement) stmt).setString(1, id);
			result = stmt.executeUpdate(sqlDelete);
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//해당 멤버 데이터 조회
	@Override
	public Member selectOne(String id) throws Exception {
		Member member = null;
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		final String sqlSelectOne = "SELECT * FROM MEMBER WHERE ID=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlSelectOne);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()) {
				member = new Member()
									.setId(rs.getString("ID"))
									.setName(rs.getString("NAME"))
									.setPwd(rs.getString("PWD"))
									.setEmail(rs.getString("EMAIL"))
									.setBirthday(rs.getString("BIRTHDAY"))
									.setTel(rs.getString("TEL"))
									.setAddress(rs.getString("ADDRESS"));
			} else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return member;
	}
	
	//해당 멤버 데이터 수정
	// 회원가입 화면으로 넘어가서 update
	@Override
	public int update(Member member) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		
		final String sqlUpdate = "UPDATE MEMBER SET NAME=?, TEL=?,EMAIL=?, PWD=?, ADDRESS=? WHERE ID=?";
		//"UPDATE qna SET TITLE=?, CONTENT=? WHERE no= ?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, member.getName());
			stmt.setString(2, member.getTel());
			stmt.setString(3, member.getEmail());
			stmt.setString(4, member.getPwd());			
			stmt.setString(5, member.getAddress());			
			stmt.setString(6, member.getId());			
			result = stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public Member exist(String id, String pwd) throws Exception {
		System.out.println(id);
		System.out.println(pwd);
		Member member = null;
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		final String sqlExist = "SELECT * FROM MEMBER WHERE ID=? AND PWD=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlExist);
			stmt.setString(1, id);
			stmt.setString(2, pwd);
			rs = stmt.executeQuery();
			if(rs.next()) {
				member = new Member()
									 .setId(rs.getString("ID"))
									 .setPwd(rs.getString("PWD"))
									.setName(rs.getString("NAME"))
									.setEmail(rs.getString("EMAIL"))
									.setTel(rs.getString("TEL"))
									.setAddress(rs.getString("ADDRESS"));
			} else {
				return null;
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return member;
	}
	
	@Override 
	public Member chkDuplicate(String id)throws Exception{
		
		Member member = null;
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		final String sqlChkDuplicate ="SELECT * FROM MEMBER WHERE ID=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlChkDuplicate);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				member = new Member()
						.setName(rs.getString("ID"));
			}else {
				return null;
			}
		}catch(Exception e) {
			throw e;
		}finally {
			try {
				if(stmt!=null) {
					stmt.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			try {
				if(connection!=null) {
					connection.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return member;
	}
	
}