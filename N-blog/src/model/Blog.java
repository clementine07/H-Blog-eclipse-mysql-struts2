package model;

public class Blog {
	private String id;
	private String title;
	private String time;
	private String data;
	private int read;
	private int comment;
	private String label;
	public Blog(){
		
	}
	public Blog(String id,String time,String data ,String title,int read,int comment ,String label){
		this.id = id;
		this.time = time;
		this.data = data;
		this.title = title;
		this.read = read;
		this.comment = comment;
		this.label = label;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getRead() {
		return read;
	}
	public void setRead(int read) {
		this.read = read;
	}
	public int getComment() {
		return comment;
	}
	public void setComment(int comment) {
		this.comment = comment;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
