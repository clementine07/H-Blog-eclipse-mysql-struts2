package model;

public class Blog {
	private String id;
	private String time;
	private String data;
	private String title;
	public Blog(){
		
	}
	public Blog(String id,String time,String data ,String title){
		this.id = id;
		this.time = time;
		this.data = data;
		this.title = title;
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

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
