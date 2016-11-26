package dao;
import java.sql.*;
import java.util.*;
import model.*;
public class UserDAO {
	public ArrayList <User> getAllUsers()
	{
		ArrayList <User> users = new ArrayList<User>(); //集合
		Connection con = db.MyConnection.getConnection();
		Statement sql;
		try
		{
			sql = con.createStatement();
			ResultSet rs = sql.executeQuery("SELECT * FROM username");
			while(rs.next())
			{
				User p = new User();
				p.setUsername(rs.getString("username"));
				p.setPassword(rs.getString("password"));				
				p.setEmail(rs.getString("email"));	
				users.add(p);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return users;
	}
	//增加User 注册
	public int addUsers(User user)
	{
		int result = 0;
		Connection con = db.MyConnection.getConnection();		
		try
		{
			PreparedStatement ps = con.prepareStatement("INSERT INTO users (username,password,email) VALUE (?,?,?)");
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());		
			ps.setString(3, user.getEmail());
			result = ps.executeUpdate();
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	//根据username查找
	public boolean getUserByUsername(String Username)
	{
		boolean result=false;//初始值flase
		Connection con = db.MyConnection.getConnection();
		Statement sql;
		try
		{
			PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE username=?");
			ps.setString(1, Username);
			ResultSet rs = ps.executeQuery();	
			if(rs.next())
			{
				return true;
			}	
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	return result;	
	}
	//登录
	public boolean login(String username,String password)
	{
		Connection conn=db.MyConnection.getConnection();//代码重用，创建连接
		boolean result=false;//初始值flase
		try
		{
		Statement sql= conn.createStatement();
		ResultSet rs = sql.executeQuery("SELECT * FROM users  where username='"
				+username+"' and password='"+password+"'");
		System.out.println("84"+username+password);
		if(rs.next())
		{
			return true;
		}	
		
		}
		catch(Exception e)
		{			e.printStackTrace();
		}
		return result;
		}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//登录
		UserDAO myLgoin=new UserDAO();
		System.out.println(myLgoin.login("admin","admin"));
		//测试修改blog 成功
		UserDAO blogDAO = new UserDAO();
		User blog =new User("7777","606060","7777@qq.com");
		int a = blogDAO.addUsers(blog);
		System.out.println(a);
	}

}
