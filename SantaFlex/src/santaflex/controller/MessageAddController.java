package santaflex.controller;

import java.util.Map;

import santaflex.annotation.Component;
import santaflex.bind.DataBinding;
import santaflex.dao.MessageDAO;
import santaflex.vo.Message;


@Component("/santa/4-1.message.do")
public class MessageAddController implements Controller, DataBinding {
   MessageDAO messageDAO;
   
   public MessageAddController setProjectDAO(MessageDAO messageDAO) {
      this.messageDAO = messageDAO;
      return this;
   }
   
   @Override
   public Object[] getDataBinders() {
      return new Object[] {
            "Message", santaflex.vo.Message.class
      };
   }
   
   @Override
   public String execute(Map<String, Object> model) throws Exception {
      Message message = (Message)model.get("Message");
      if(message.getTitle() == null) {
         return "/santa/4-1.message.jsp";
      } else {
         messageDAO.insert(message);
         return "redirect:4-2.messagelist.do";
      }
   }
}