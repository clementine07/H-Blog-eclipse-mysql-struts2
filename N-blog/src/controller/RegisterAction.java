package controller;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.UserDAO;
import model.User;

public class RegisterAction extends SuperAction {
	private String username;
	private String email;
	private String password;
	private String passagain;
	User user;
	ArrayList <User> users; //创建arraylist，存储获取到的数组
	UserDAO userDAO = new UserDAO();	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassagain() {
		return passagain;
	}
	public void setPassagain(String passagain) {
		this.passagain = passagain;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public ArrayList<User> getUsers() {
		return users;
	}
	public void setUsers(ArrayList<User> users) {
		this.users = users;
	}
	public UserDAO getUserDAO() {
		return userDAO;
	}
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	@Override
	public String execute() throws Exception {
		//用模型层判断参数是否正确
		if(username == null || email == null||password==null||passagain==null){
			this.addFieldError("nullError", "不能为空");
			return "register_failure";
		}
		if(password.length()<6|| passagain.length()<6){
			this.addFieldError("passwordError", "密码长度不少于6位");
			return "register_failure";
		}
		if(!password.equals(passagain)){
			this.addFieldError("passagainError", "两次密码不相等");
			return "register_failure";
		}
		//先查询数据库中是否有用户，再创建
		else{
			boolean result = userDAO.getUserByUsername(username);
			if(result== true){
				this.addFieldError("logoutError","用户已存在");
				return "register_failure";
			}else{
				//添加错误提示信息
				userDAO.addUsers(user);
				return "register_success";
			}
		}
	}
}
