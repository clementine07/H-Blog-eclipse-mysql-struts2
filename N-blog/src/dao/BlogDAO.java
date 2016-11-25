package dao;

import java.sql.*;
import java.util.ArrayList;

import model.Blog;

public class BlogDAO {
	/*查看所有博客信息*/
	public ArrayList <Blog> getAllBlogs()
	{
		ArrayList <Blog> Blogs = new ArrayList<Blog>(); //集合
		Connection con = db.MyConnection.getConnection();
		Statement sql;
		try
		{
			sql = con.createStatement();
			ResultSet rs = sql.executeQuery("SELECT * FROM blogs");
			while(rs.next())
			{
				Blog p = new Blog();
				p.setId(rs.getString("id"));
				p.setTime(rs.getString("time"));	
				p.setData(rs.getString("data"));	
				p.setTitle(rs.getString("title"));
				Blogs.add(p);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return Blogs;
	}
	
	/*删除指定ID的博客信息*/
	public int deleteBlogById(String Id)
	{
		int result = 0;
		Connection con = db.MyConnection.getConnection();
		Blog p= null;
		try
		{
			PreparedStatement ps = con.prepareStatement("DELETE FROM blogs WHERE id=?");
			ps.setString(1, Id);
			result = ps.executeUpdate();
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	/*增加指定ID的博客信息*/
	public int addBlog(Blog blog)
	{
		int result = 0;
		Connection con = db.MyConnection.getConnection();
		
		try
		{
			PreparedStatement ps = con.prepareStatement("INSERT INTO blogs (id,time,data,title) VALUE (?,?,?,?)");
			ps.setString(1, blog.getId());
			ps.setString(2, blog.getTime());
			ps.setString(3, blog.getData());
			ps.setString(4, blog.getTitle());
			result = ps.executeUpdate();
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	/*修改指定ID的博客信息，不可以修改ID*/
	public int editBlog(Blog blog)
	{
		 int result =0;
		Connection con = db.MyConnection.getConnection();
		try
		{
			PreparedStatement ps = con.prepareStatement("UPDATE blogs SET  time=?, data=?, title=? WHERE id=?");
			ps.setString(1, blog.getTime());
			ps.setString(2, blog.getData());
			ps.setString(3, blog.getTitle());
			ps.setString(4, blog.getId());
			result = ps.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	//搜索功能
	public   ArrayList <Blog> queryByLike(String Name)
	{
		ArrayList <Blog> blogs = new ArrayList<Blog>(); // 商品集合
		Connection con = db.MyConnection.getConnection();
		Statement sql;
		Blog p;
		try
		{
			PreparedStatement ps = con.prepareStatement("SELECT * FROM blogs WHERE title LIKE ? ");
			ps.setString(1,"%"+Name+"%"); 
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				 p=new Blog();
				p.setId(rs.getString("id"));
				p.setTime(rs.getString("time"));	
				p.setData(rs.getString("data"));	
				p.setTitle(rs.getString("title"));
				blogs.add(p);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	return blogs;
	}
			//获取最近浏览的前五条博客
			public ArrayList<Blog> getViewList(String list)
			{
				System.out.println("list:"+list);
				ArrayList<Blog> blogs = new ArrayList<Blog>();
				int iCount=5; //每次返回前五条记录
				if(list!=null&&list.length()>0)
				{
				    String[] arr = list.split(",");
				    System.out.println("arr.length="+arr.length);
				    //如果商品记录大于等于5条
				    if(arr.length>=5)
				    {
				       for(int i=arr.length-1;i>=arr.length-iCount;i--)
				       {	
				    	   blogs.add(getBlogById(arr[i]));  
				       }
				    }
				    else
				    {
				    	for(int i=arr.length-1;i>=0;i--)
				    	{
				    		blogs.add(getBlogById(arr[i]));  
				    	}
				    }
				    return blogs;
				}
				else
				{
					return null;
				}
				
			}
			// 根据博客编号获得博客资料
			public  Blog getBlogById(String Id)
			{
				Connection con = db.MyConnection.getConnection();
				Statement sql;
				Blog p=null;//放在外面
				try
				{

					PreparedStatement ps = con.prepareStatement("SELECT * FROM blogs WHERE id=?");
					ps.setString(1, Id);
					ResultSet rs = ps.executeQuery();	
					while(rs.next())
					{
						p = new Blog();
						p.setId(rs.getString("id"));
						p.setTime(rs.getString("time"));	
						p.setData(rs.getString("data"));	
						p.setTitle(rs.getString("title"));
					}
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
			return p;	
			}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//测试获取所有博客内容
		/*BlogDAO blogDAO = new BlogDAO();
		ArrayList <Blog> getAllBlogs = blogDAO.getAllBlogs();
		for(int i=0;i < getAllBlogs.size();i++){
			Blog p = getAllBlogs.get(i);
			System.out.println(p);
		}*/
		
		//测试根据id获取blog
	/*	BlogDAO blogDAO = new BlogDAO();
	 * blogDAO.getBlogById("2");*/
		
		
		//模糊查询测试
		BlogDAO blogDAO = new BlogDAO();
		String Name ="zzz";
		ArrayList <Blog> blogs =blogDAO.queryByLike(Name);
		System.out.println(blogs);
		
		//测试修改blog 成功
		/*BlogDAO blogDAO = new BlogDAO();
		Blog blog =new Blog("5","1996/7/20","3","4");
		int a = blogDAO.editBlog(blog);
		System.out.println(a);*/
	}

}
