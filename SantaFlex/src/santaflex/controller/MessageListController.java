package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.dao.MessageDAO;

@Component("/santa/4-2.messagelist.do")
public class MessageListController implements Controller {
   MessageDAO messageDAO;
   
   public MessageListController setProjectDAO(MessageDAO messageDAO) {
      this.messageDAO = messageDAO;
      return this;
   }
   
   @Override
   public String execute(Map<String, Object> model) throws Exception {
      model.put("messages", messageDAO.selectlist());
      return "/santa/4-2.messagelist.jsp";
   }
}