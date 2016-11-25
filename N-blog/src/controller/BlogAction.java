package controller;
import java.util.ArrayList;
import dao.BlogDAO;
import model.Blog;
import com.opensymphony.xwork2.ActionSupport;


public class BlogAction extends ActionSupport {
	private String id;
	Blog blog;
	ArrayList <Blog> blogs; //创建arraylist，存储获取到的数组
	BlogDAO blogDAO = new BlogDAO();
	private String searchname;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}	
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	public ArrayList<Blog> getBlogs() {
		return blogs;
	}
	public void setBlogs(ArrayList<Blog> blogs) {
		this.blogs = blogs;
	}
	public BlogDAO getBlogDAO() {
		return blogDAO;
	}
	public void setBlogDAO(BlogDAO blogDAO) {
		this.blogDAO = blogDAO;
	}
	
	public String getSearchname() {
		return searchname;
	}
	public void setSearchname(String searchname) {
		this.searchname = searchname;
	}
	//博客列表
	  public String list()
	  {        
		 //ArrayList <Blog> getAllBlogs= blogDAO.getAllBlogs();
		  blogs= blogDAO.getAllBlogs();
		  System.out.println(blogs.get(0).getTime());
		  return SUCCESS; 
	  }
	  //删除博客
	  public String remove() 
	  {        
		  blogDAO. deleteBlogById(id); 
		  return SUCCESS;  
	  }
	 //模糊查询博客
	/*public String search(){
		blogs= blogDAO.queryByLike(searchname);
		System.out.println(blogs.get(0).getData());
		return SUCCESS;
	}*/
	  public String search(){
			blogs= blogDAO.queryByLike(searchname);
			System.out.println(blogs);
			System.out.println(searchname);
			return SUCCESS;
		}
	//通过id获取单个
	public String load() {
		blog = blogDAO.getBlogById(id);
		return SUCCESS;
		}
	//增加
	public String add() {
		blogDAO.addBlog(blog);
		return SUCCESS;
		}
	//修改
	public String change(){
		blogDAO.editBlog(blog);
		return SUCCESS;
	}
	  public static void main(String[] args) {
		// TODO Auto-generated method stub
		//测试list方法
		BlogAction action = new BlogAction();
	/*	action.list();*/
		String searchname ="缓缓";
		action.search();
	}

}
