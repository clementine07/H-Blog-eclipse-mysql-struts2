package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Blog;
import model.Comment;

public class CommentDAO {
	/*增加指定ID的评论信息*/
	public int addComment(Comment c)
	{
		int result = 0;
		Connection con = db.MyConnection.getConnection();		
		try
		{
			PreparedStatement ps = con.prepareStatement("INSERT INTO comments (bid,fromuser,touser,data,time) VALUE (?,?,?,?,?)");
			ps.setInt(1, c.getBid());
			ps.setString(2, c.getFromuser());
			ps.setString(3, c.getTouser());
			ps.setString(4, c.getData());
			ps.setString(5, c.getTime());			
			result = ps.executeUpdate();			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}		
		return result;
	}
	/*查看指定博客下的所有评论信息，按照时间排序*/
	//查不到值时返回[]
	public ArrayList <Comment> getAllComments(String Id)
	{
		ArrayList <Comment> cs = new ArrayList<Comment>(); //集合
		Connection con = db.MyConnection.getConnection();
		Statement sql;
		try
		{
			PreparedStatement ps = con.prepareStatement("SELECT * FROM comments WHERE bid=? ORDER BY time DESC");
			ps.setString(1, Id); 
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Comment p = new Comment();
				p.setFromuser(rs.getString("fromuser"));
				p.setTouser(rs.getString("touser"));
				p.setTime(rs.getString("time"));	
				p.setData(rs.getString("data"));		
				cs.add(p);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}			
			return cs;		
	}
	/*删除指定ID的博客信息*/
	public int deleteCommentById(String Id)
	{
		int result = 0;
		Connection con = db.MyConnection.getConnection();
		Blog p= null;
		try
		{
			PreparedStatement ps = con.prepareStatement("DELETE FROM comments WHERE id=?");
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
		CommentDAO commentDAO = new CommentDAO();
		ArrayList <Comment> getAllComments =commentDAO.getAllComments("2");
		/*for(int i=0;i < getAllComments.size();i++){
			Comment p = getAllComments.get(i);
			System.out.println(p);
		}*/
		/*System.out.println(getAllComments);
		if(getAllComments.size()==0) //判断arrylist是否为[]
		{
			System.out.println("74");
		}*/
		Comment c=new Comment(4,2,"lilysu0720","606060","博客非常有意思！","2016-12-04 16:34:56");
		int a = commentDAO.addComment(c);
		System.out.println(a);
		
	}
}
