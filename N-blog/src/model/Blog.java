package model;

public class Blog {
	private String id;
	private String title;
	private String time;
	private String data;
	private int read_times;
	private int comment;
	private String label;
	private String username;
	private int stauts;
	public Blog(){
		
	}
	public Blog(String id,String title,String time,String data ,int read_times,int comment ,String label,String username, int stauts){
		this.id = id;
		this.title = title;
		this.time = time;
		this.data = data;
		this.read_times = read_times;
		this.comment = comment;
		this.label = label;
		this.username =username;
		this.stauts = stauts;
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
	public int getRead_times() {
		return read_times;
	}
	public void setRead_times(int read_times) {
		this.read_times = read_times;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getStauts() {
		return stauts;
	}
	public void setStauts(int stauts) {
		this.stauts = stauts;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
