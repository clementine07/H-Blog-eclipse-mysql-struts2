package controller;
import java.util.ArrayList;
import java.util.Map;

import dao.BlogDAO;
import dao.UserDAO;
import model.Blog;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BlogAction extends ActionSupport {
	private String id;
	Blog blog;
	ArrayList <Blog> blogs; //创建arraylist，存储获取到的数组
	BlogDAO blogDAO = new BlogDAO();
	private String searchname;
	private String softdel;
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
	public String getSoftdel() {
		return softdel;
	}
	public void setSoftdel(String softdel) {
		this.softdel = softdel;
	}
	//博客列表
	  public String list()
	  {        
		 //ArrayList <Blog> getAllBlogs= blogDAO.getAllBlogs();
		  blogs= blogDAO.getAllBlogs();
		  System.out.println(blogs.get(0).getTime());
		  return SUCCESS; 
	  }
	  //实际删除博客
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
	//通过id获取单个并增加read次数
	public String load() {
		System.out.println(id);
		blogDAO.addreadBlog(id);
		blog = blogDAO.getBlogById(id);
		return SUCCESS;
		}
	//修改获取视图
	public String edit() {
		System.out.println(id);
		blogDAO.addreadBlog(id);
		blog = blogDAO.getBlogById(id);
		return SUCCESS;
		}
	//增加
	public String add() {
		blogDAO.addBlog(blog);
		return SUCCESS;
		}
	//修改内容保存
	public String change(){
		blogDAO.editBlog(blog);
		return SUCCESS;
	}
	//主页获取
	public String index(){
		blogs= blogDAO.queryByName(searchname);
		System.out.println(blogs);
		System.out.println(searchname);
		return SUCCESS;		
	}
	//回收站
	public String recycle(){
		blogs= blogDAO.queryByRecycle(searchname);
		/*System.out.println(blogs);
		System.out.println(searchname);*/
		return SUCCESS;		
	}
	//草稿箱
		public String drafts(){
			blogs= blogDAO.queryByDrafts(searchname);
			return SUCCESS;		
		}
	//软删除
		public String softdel(){
			blogDAO.softdelBlog(id);//先更改stauts=1
			/*blog = blogDAO.getBlogById(id);//根据id获取blog整条信息
			softdel=blog.getUsername();//根据blog传出username的值
*/			return SUCCESS;
		}
	  public static void main(String[] args) {
		// TODO Auto-generated method stub
		//测试list方法
		BlogAction action = new BlogAction();
		String id="4";
		action.load();
	}

}
