package santaflex.vo;

import java.sql.Date;

public class QnA {
	protected int no;
	protected String title;
	protected String content;
	protected Date regDate;
	protected int hit;
	public int getNo() {
		return no;
	}
	public QnA setNo(int no) {
		this.no = no;
		return this;
	}
	public String getTitle() {
		return title;
	}
	public QnA setTitle(String title) {
		this.title = title;
		return this;
	}
	public String getContent() {
		return content;
	}
	public QnA setContent(String content) {
		this.content = content;
		return this;
	}
	public Date getRegDate() {
		return regDate;
	}
	public QnA setRegDate(Date regDate) {
		this.regDate = regDate;
		return this;
	}
	public int getHit() {
		return hit;
	}
	public QnA setHit(int hit) {
		this.hit = hit;
		return this;
	}	
}