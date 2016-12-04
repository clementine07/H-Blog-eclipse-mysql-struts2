package model;

public class Comment {
	private int id; //这条评论记录的id 主键
	private int bid;//所评论的博客id
	private String from;//发表评论者
	private String to;//被评论者
	private String data;//评论内容
	private String time;//评论时间
	public Comment(){
		
	}
	public Comment(int id,int bid,String from ,String to,String data,String time){
		this.id = id;
		this.bid = bid;		
		this.from = from;
		this.to = to;
		this.data = data;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
