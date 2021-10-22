package santaflex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import santaflex.annotation.Component;
import santaflex.vo.Message;

@Component("messageDAO")
public class MySqlMessageDAO implements MessageDAO{
   DataSource ds;
   
   public void setDataSource(DataSource ds) {
      this.ds = ds;
   }
   
   @Override
   public List<Message> selectlist() throws Exception{
      Connection connection = null;
      Statement stmt = null;
      ResultSet rs = null;
      
      String sqlSelect = "SELECT * FROM MESSAGE ORDER BY MSGNUM DESC";
      try {
         connection = ds.getConnection();
         stmt = connection.createStatement();
         rs = stmt.executeQuery(sqlSelect);
         
         ArrayList<Message> message = new ArrayList<Message>();
         
         while(rs.next()) {
            message.add(new Message()
                              .setMsgnum(rs.getInt("MSGNUM"))
                              .setSend(rs.getString("SEND"))
                              .setTitle(rs.getString("TITLE"))
                              .setContent(rs.getString("CONTENT"))
                              .setDate(rs.getDate("DATE")));
                              
         }
         return message;
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
   public int insert(Message message) throws Exception {
      Connection connection = null;
      PreparedStatement stmt = null;

      String sqlInsert = "INSERT INTO message(MSGNUM, SEND, TITLE, CONTENT, DATE)" +
            "VALUES((SELECT IFNULL(MAX(MSGNUM), 0) + 1 FROM MESSAGE M), ?, ?, ?, NOW())";

      try {
         connection = ds.getConnection();
         stmt = connection.prepareStatement(sqlInsert);
         stmt.setString(1, message.getSend());
         stmt.setString(2, message.getTitle());
         stmt.setString(3, message.getContent());

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
   public Message selectOne(int msgnum) throws Exception {
      Connection connection = null;
      Statement stmt = null;
      ResultSet rs = null;

      String sqlSelectOne = "SELECT * FROM message WHERE MSGNUM = " + msgnum;

      try {
         connection = ds.getConnection();
         stmt = connection.createStatement();
         rs = stmt.executeQuery(sqlSelectOne);
         if(rs.next()) {
            return new Message()
                  .setMsgnum(rs.getInt("MSGNUM"))
                  .setSend(rs.getString("SEND"))
                  .setTitle(rs.getString("TITLE"))
                  .setContent(rs.getString("CONTENT"))
                  .setDate(rs.getDate("DATE"));
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
   
   @Override
   public int delete(int msgnum) throws Exception {
      Connection connection = null;
      Statement stmt = null;

      String sqlDelete = "DELETE FROM message WHERE MSGNUM=" + msgnum;

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