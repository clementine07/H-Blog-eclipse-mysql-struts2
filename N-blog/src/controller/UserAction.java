package controller;
import java.util.Map;

import org.apache.struts2.interceptor.validation.SkipValidation;

import dao.UserDAO;
import model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;


public class UserAction extends SuperAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	
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

	@Override
	public String execute() throws Exception {
		//用模型层判断用户名、密码是否正确
	
		if(username == null ){
			this.addFieldError("usernameError", "用户名不能为空");
			return "login_failure";
		}
		if(password.length()<6 ){
			this.addFieldError("passwordError", "密码长度不少于6位");
			return "login_failure";
		}
		else{
			UserDAO model = new UserDAO();
			boolean result = model.login(username,password);
			//如果是正确的用户名和密码，则跳转到成功登陆页面
			if(result== true){
				//相当于request对象
				ActionContext ac = ActionContext.getContext();
				Map<String,Object> request = ac.getParameters();
				request.put("name", username);
				//在sesiion中保存登录成功
				session.setAttribute("loginUserName",username);
				return "login_success";
			}else{
				//添加错误提示信息
				this.addFieldError("logoutError","错误的用户名或密码");
				return "login_failure";
			}
		}
	}
	
	//用户注销方法
	@SkipValidation	
	public String logout(){
		if(session.getAttribute("loginUserName")!=null){
			session.removeAttribute("loginUserName");
		}
		return "logout_success";
	}
}
