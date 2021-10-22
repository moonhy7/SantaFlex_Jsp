package santaflex.vo;

import java.sql.Date;

public class Event {
	protected String id;
	protected String name;
	protected String eventDate;
	protected String receiver;
	protected String location;
	protected String content;
	protected String regDate;
	public String getId() {
		return id;
	}
	public Event setId(String id) {
		this.id = id;
		return this;
	}
	public String getName() {
		return name;
	}
	public Event setName(String name) {
		this.name = name;
		return this;
	}
	public String getEventDate() {
		return eventDate;
	}
	public Event setEventDate(String eventDate) {
		this.eventDate = eventDate;
		return this;
	}
	public String getReceiver() {
		return receiver;
	}
	public Event setReceiver(String receiver) {
		this.receiver = receiver;
		return this;
	}
	public String getLocation() {
		return location;
	}
	public Event setLocation(String location) {
		this.location = location;
		return this;
	}
	public String getContent() {
		return content;
	}
	public Event setContent(String content) {
		this.content = content;
		return this;
	}
	public String getRegDate() {
		return regDate;
	}
	public Event setRegDate(String regDate) {
		this.regDate = regDate;
		return this;
	}
	
	
}
