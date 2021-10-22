package santaflex.vo;

import java.sql.Date;

public class Message {
   
   protected int msgnum;
   protected String send;
   protected String title;
   protected String content;
   protected Date date;
   
   public int getMsgnum() {
      return msgnum;
   }
   public Message setMsgnum(int msgnum) {
      this.msgnum = msgnum;
      return this;
   }
   public String getSend() {
      return send;
   }
   public Message setSend(String send) {
      this.send = send;
      return this;
   }
  
   public String getTitle() {
      return title;
   }
   public Message setTitle(String title) {
      this.title = title;
      return this;
   }
   public String getContent() {
      return content;
   }
   public Message setContent(String content) {
      this.content = content;
      return this;
   }
   public Date getDate() {
      return date;
   }
   public Message setDate(Date date) {
      this.date = date;
      return this;
   }
   
}