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
	private String searchtitle;
	private String username;
	
	public String getSearchtitle() {
		return searchtitle;
	}
	public void setSearchtitle(String searchtitle) {
		this.searchtitle = searchtitle;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
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
	 //模糊查询博客(根据博客名）
	  public String searchtitle(){
			blogs= blogDAO.queryByTitle(searchtitle,username);
			return SUCCESS;
		}
	//模糊查询博客(根据博主名）
	  public String search(){
			blogs= blogDAO.queryByLike(searchname);
			return SUCCESS;
		}
	//通过id获取单个并增加read次数
	public String load() {
		System.out.println(id);
		blogDAO.addreadBlog(id);
		blog = blogDAO.getBlogById(id);
		return SUCCESS;
		}
	//增加comment
	public String addcommentBlog() {
		blogDAO.addcommentBlog(id);	
		blog = blogDAO.getBlogById(id);
		return SUCCESS;
		}
	//修改获取视图
	public String edit() {
		System.out.println(id);
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
		return SUCCESS;		
	}
	//回收站
	public String recycle(){
		blogs= blogDAO.queryByRecycle(searchname);
		if(blogs.size()==0){
			this.addFieldError("RecycleError", "回收站为空");
			blogs=null;	
		}		
		return SUCCESS;		
	}

	//草稿箱
		public String drafts(){
			blogs= blogDAO.queryByDrafts(searchname);
			if(blogs.size()==0){
				this.addFieldError("DraftsError", "草稿箱为空");
				blogs=null;	
			}		
			return SUCCESS;		
		}
	//软删除
		public String softdel(){
			blogDAO.softdelBlog(id);//先更改stauts=1
			/*blog = blogDAO.getBlogById(id);//根据id获取blog整条信息
			softdel=blog.getUsername();//根据blog传出username的值
*/			return SUCCESS;
		}
		/*恢复指定ID的博客信息，不可以修改ID*/
		public String save(){
			 blogDAO.saveBlogById(id);
			 return SUCCESS;	
		}
	  public static void main(String[] args) {
		// TODO Auto-generated method stub
		//测试list方法
		BlogAction action = new BlogAction();
		String id="4";
		action.load();
	}

}
