package santaflex.dao;

import java.util.List;

import santaflex.vo.QnA;

public interface ProjectDAO {
   List<QnA> selectlist() throws Exception;
   int insert(QnA qna) throws Exception;
   QnA selectOne(int no) throws Exception;
   int update(QnA qna) throws Exception;
   int delete(int no) throws Exception;
   int upHit(int no, int hit) throws Exception;
}