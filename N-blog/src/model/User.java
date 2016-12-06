package model;

public class User {
	private String username;
	private String password;
	private String email;
	private String img;
	public User(){
		
	}
	public User(String username,String password,String email,String img){
		this.username = username;
		this.password = password;
		this.email = email;		
		this.img = img;
	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
