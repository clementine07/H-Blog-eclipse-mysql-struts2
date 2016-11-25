/*MySQL数据库连接*/

package db;

import java.sql.*;

public class MyConnection {
	public static Connection getConnection()
	{
		String driverClass="com.mysql.jdbc.Driver"; 
		String url="jdbc:mysql://localhost:3307/blog?useUnicode=true&characterEncoding=UTF8";//之前数据库名simple 
		String user="root";//MySQ帐号 
		String psd="usbw";//MYSQL密码 
		Connection conn = null;
		try
		{
			Class.forName(driverClass).newInstance();	//查看是否导入了jar包
	    	conn=DriverManager.getConnection(url, user, psd);
		}
		catch(Exception ex)
		{
     		ex.printStackTrace();
   		}
		
		return conn;
		
	}
	
	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		getConnection();
	}
}