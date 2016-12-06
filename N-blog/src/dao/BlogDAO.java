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
				p.setTitle(rs.getString("title"));
				p.setTime(rs.getString("time"));	
				p.setData(rs.getString("data"));
				p.setRead_times(rs.getInt("read_times"));
				p.setComment(rs.getInt("comment"));
				p.setLabel(rs.getString("label"));
				p.setUsername(rs.getString("username"));
				p.setStauts(rs.getInt("status"));
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
	/*软删除指定ID的博客信息，不可以修改ID*/
	public int softdelBlog(String Id)
	{
		 int result =0;
		Connection con = db.MyConnection.getConnection();
		try
		{
			PreparedStatement ps = con.prepareStatement("UPDATE blogs SET  status=1 WHERE id=?");			
			ps.setString(1, Id);
			result = ps.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	/*恢复指定ID的博客信息，不可以修改ID*/
	public int saveBlogById(String Id)
	{
		 int result =0;
		Connection con = db.MyConnection.getConnection();
		try
		{
			PreparedStatement ps = con.prepareStatement("UPDATE blogs SET  status=0 WHERE id=?");			
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
			PreparedStatement ps = con.prepareStatement("INSERT INTO blogs (title,time,data,label,username,status) VALUE (?,?,?,?,?,?)");
			ps.setString(1, blog.getTitle());
			ps.setString(2, blog.getTime());
			ps.setString(3, blog.getData());
			ps.setString(4, blog.getLabel());
			ps.setString(5, blog.getUsername());
			ps.setInt(6, blog.getStauts());		
			result = ps.executeUpdate();			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	/*修改指定ID的博客信息，不可以修改ID*/
	/*虽然不是所有的东西都被修改，但是因为参数是Blog类型，所以需要前端把所有参数都传过来*/
	public int editBlog(Blog blog)
	{
		 int result =0;
		Connection con = db.MyConnection.getConnection();
		try
		{
			PreparedStatement ps = con.prepareStatement("UPDATE blogs SET  time=?, data=?, title=?,label=? WHERE id=?");
			ps.setString(1, blog.getTime());
			ps.setString(2, blog.getData());
			ps.setString(3, blog.getTitle());
			ps.setString(4,blog.getLabel());
			ps.setString(5, blog.getId());		
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
				p.setRead_times(rs.getInt("read_times"));
				p.setComment(rs.getInt("comment"));
				p.setLabel(rs.getString("label"));
				p.setUsername(rs.getString("username"));
				p.setStauts(rs.getInt("status"));
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
						p.setComment(rs.getInt("comment"));
						p.setRead_times(rs.getInt("read_times"));
						p.setLabel(rs.getString("label"));
						p.setUsername(rs.getString("username"));
					}
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
			return p;	
			}
	//根据所要查看的用户名，来筛选出相对应的Blog（主页显示）
			public ArrayList <Blog> queryByName(String Name)
			{
				ArrayList <Blog> blogs = new ArrayList<Blog>(); // 商品集合
				Connection con = db.MyConnection.getConnection();
				Statement sql;
				Blog p;
				try
				{
					//time倒序，根据username查询所有结果，显示status=0的数据
					PreparedStatement ps = con.prepareStatement("SELECT * FROM blogs WHERE username=? AND status=0 ORDER BY time DESC");
					/*ps.setInt(1, 0); */
					ps.setString(1, Name); 
					ResultSet rs = ps.executeQuery();
					while(rs.next())
					{
						p=new Blog();
						p.setId(rs.getString("id"));
						p.setTime(rs.getString("time"));	
						p.setData(rs.getString("data"));	
						p.setTitle(rs.getString("title"));
						p.setLabel(rs.getString("label"));
						p.setRead_times(rs.getInt("read_times"));
						p.setComment(rs.getInt("comment"));
						p.setUsername(rs.getString("username"));
						blogs.add(p);
					}
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
			return blogs;
			}
			//根据所要查看的用户名，来筛选出相对应的Blog（主页显示）
			public ArrayList <Blog> queryByTitle(String Title,String Username)
			{
				ArrayList <Blog> blogs = new ArrayList<Blog>(); // 商品集合
				Connection con = db.MyConnection.getConnection();
				Statement sql;
				Blog p;
				try
				{
					//time倒序，根据username查询所有结果，显示status=0的数据
					PreparedStatement ps = con.prepareStatement("SELECT * FROM blogs WHERE title Like ? AND status=0 AND username=? ORDER BY time DESC");
					ps.setString(1,"%"+ Title+"%");
					ps.setString(2, Username); 
					ResultSet rs = ps.executeQuery();
					while(rs.next())
					{
						p=new Blog();
						p.setId(rs.getString("id"));
						p.setTime(rs.getString("time"));	
						p.setData(rs.getString("data"));	
						p.setTitle(rs.getString("title"));
						p.setLabel(rs.getString("label"));
						p.setRead_times(rs.getInt("read_times"));
						p.setComment(rs.getInt("comment"));
						p.setUsername(rs.getString("username"));
						blogs.add(p);
					}
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
			return blogs;
			}
			//回收站
			public ArrayList <Blog> queryByRecycle(String Name)
			{
				ArrayList <Blog> blogs = new ArrayList<Blog>(); // 商品集合
				Connection con = db.MyConnection.getConnection();
				Statement sql;
				Blog p;
				try
				{
					PreparedStatement ps = con.prepareStatement("SELECT * FROM blogs WHERE username=? AND status=1");
					/*ps.setInt(1, 0); */
					ps.setString(1, Name); 
					ResultSet rs = ps.executeQuery();
					while(rs.next())
					{
						p=new Blog();
						p.setId(rs.getString("id"));
						p.setTime(rs.getString("time"));	
						p.setData(rs.getString("data"));	
						p.setTitle(rs.getString("title"));
						p.setLabel(rs.getString("label"));
						p.setRead_times(rs.getInt("read_times"));
						p.setComment(rs.getInt("comment"));
						p.setUsername(rs.getString("username"));
						blogs.add(p);
					}
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
			return blogs;
			}
			//草稿箱
			public ArrayList <Blog> queryByDrafts(String Name)
			{
				ArrayList <Blog> blogs = new ArrayList<Blog>(); // 商品集合
				Connection con = db.MyConnection.getConnection();
				Statement sql;
				Blog p;
				try
				{
					PreparedStatement ps = con.prepareStatement("SELECT * FROM blogs WHERE username=? AND status=2");
					/*ps.setInt(1, 0); */
					ps.setString(1, Name); 
					ResultSet rs = ps.executeQuery();
					while(rs.next())
					{
						p=new Blog();
						p.setId(rs.getString("id"));
						p.setTime(rs.getString("time"));	
						p.setData(rs.getString("data"));	
						p.setTitle(rs.getString("title"));
						p.setLabel(rs.getString("label"));
						p.setRead_times(rs.getInt("read_times"));
						p.setComment(rs.getInt("comment"));
						p.setUsername(rs.getString("username"));
						blogs.add(p);
					}
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
			return blogs;
			}
			/*修改read*/
			public int addreadBlog(String Id)
			{
				 int result =0;
				Connection con = db.MyConnection.getConnection();
				try
				{
					PreparedStatement ps = con.prepareStatement("UPDATE blogs SET  read_times = read_times+1 WHERE id=?");
					//可以让null值也加1
					ps.setString(1, Id);
					result = ps.executeUpdate();
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
				
				return result;
			}
			//增加comment次数
			public int addcommentBlog(String Id)
			{
				 int result =0;
				Connection con = db.MyConnection.getConnection();
				try
				{
					PreparedStatement ps = con.prepareStatement("UPDATE blogs SET  comment = comment+1 WHERE id=?");
					//可以让null值也加1
					ps.setString(1, Id);
					result = ps.executeUpdate();
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
				
				return result;
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
		/*BlogDAO blogDAO = new BlogDAO();
		blogDAO.getBlogById("1");*/
		
		
		//模糊查询测试
		/*BlogDAO blogDAO = new BlogDAO();
		String Name ="zzz";
		ArrayList <Blog> blogs =blogDAO.queryByLike(Name);
		System.out.println(blogs);
		*/
		//测试修改blog 成功
		BlogDAO blogDAO = new BlogDAO();
		//String id,String title,String time,String data ,int read_times,int comment ,String label,String username, int stauts
		Blog blog =new Blog("20","aaa2222","2016-12-04 23:26:00","**aaa2222**",0,0,"zzzzz","606060",0);
		int a = blogDAO.editBlog(blog);
		System.out.println(a);
		//增加
		/*BlogDAO blogDAO = new BlogDAO();
		Blog blog =new Blog("9","标题","1996/7/20","内容",0,0,"标签");
		int a = blogDAO.addBlog(blog);
		System.out.println(a);*/
		
		//
		/*BlogDAO blogDAO = new BlogDAO();
		String Name ="606060";
		 ArrayList <Blog> blogs =blogDAO.queryByName(Name);
		System.out.println(blogs);*/
		
		/*BlogDAO blogDAO = new BlogDAO();	
		int a = blogDAO.addreadBlog("4");
		System.out.println(a);*/
		
	}

}
