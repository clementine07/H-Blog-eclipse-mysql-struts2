package controller;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import dao.CommentDAO;
import model.Comment;

public class CommentAction extends ActionSupport {
	private String id;
	Comment comment;
	ArrayList <Comment> comments; //创建arraylist，存储获取到的数组
	CommentDAO commentDAO = new CommentDAO();
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public ArrayList<Comment> getComments() {
		return comments;
	}
	public void setComments(ArrayList<Comment> comments) {
		this.comments = comments;
	}
	public CommentDAO getCommentDAO() {
		return commentDAO;
	}
	public void setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
		}
	//增加
	public String add() {
		commentDAO.addComment(comment);
		return SUCCESS;
		}
	//博客列表
	  public String view_comment() // action 不能有参数
	  {        
		  System.out.println(id);
		  comments= commentDAO.getAllComments(id);
		  System.out.println(comments.get(0).getTime());
		  return SUCCESS; 
	  }
	  public static void main(String[] args) {
			// TODO Auto-generated method stub
			//测试list方法
			CommentAction action = new CommentAction();
			String id="4";
			//action.view_comment(id);
		}
}
