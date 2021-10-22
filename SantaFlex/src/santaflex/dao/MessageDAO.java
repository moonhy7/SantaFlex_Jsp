package santaflex.dao;

import java.util.List;

import santaflex.vo.Message;

public interface MessageDAO {
      List<Message> selectlist() throws Exception;
      int insert(Message message) throws Exception;
      Message selectOne(int msgnum) throws Exception;
      int delete(int msgnum) throws Exception;
}