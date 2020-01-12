package Dao;

import java.sql.Connection;
<<<<<<< HEAD
import java.util.Date;
=======
<<<<<<< HEAD
import java.util.Date;
=======
<<<<<<< HEAD
import java.sql.Date;
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


<<<<<<< HEAD
=======
=======
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

<<<<<<< HEAD

=======
import org.apache.ibatis.session.SqlSession;
import org.omg.CORBA.Request;
>>>>>>> c1c9bfc5df958588f6e52ceb3b0272d659e7c954
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694

import Dto.Dto;

public class Dbaccess {

	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String DB_URL = "jdbc:mysql://localhost/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8";
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
	private final String DB_URL = "jdbc:mysql://localhost/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8";
=======
	private final String DB_URL = "jdbc:mysql://localhost/userinfo";
>>>>>>> c1c9bfc5df958588f6e52ceb3b0272d659e7c954
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
	private final String USER_NAME = "root";
	private final String PASSWORD = "317272";
	
	Connection conn= null;
	Statement state = null;
	PreparedStatement pstmt =null;
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
	PreparedStatement pstmt =null;
=======

>>>>>>> c1c9bfc5df958588f6e52ceb3b0272d659e7c954
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
	
	public Dbaccess(){
		try {
			Class.forName(JDBC_DRIVER);
		}catch(Exception e) {
			
		}
	}
	
	
	void conn() {
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
		}catch(Exception e) {
			
		}
	}
	
	void close() {
		if (state != null) {
		try{
				state.close();
			
		}catch(Exception e) {
			}
		}
		if (conn != null) {
		try {
			conn.close();
		}catch(Exception e) {
			
		}
		}
	}
	public ArrayList<Dto> selectall() {
		ArrayList<Dto> dtolist = new ArrayList<Dto>();
		
		ResultSet rs;
		try {
			conn();
			state = conn.createStatement();
			rs = state.executeQuery("select * from board ORDER BY num desc;");
			while(rs.next()) {
				Dto dto = new Dto();
				dto.setNum(rs.getInt("num"));
				dto.setWritename(rs.getString("writename"));
				dto.setMoviename(rs.getString("moviename"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
				dto.setComment(rs.getString("comment"));
				dto.setDay(rs.getString("day"));
				dtolist.add(dto);
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return dtolist;
	}
	
	public void insert(ArrayList<Dto> dto) {
		
		String query="insert into board (`writename`, `moviename`, `title`, `contents`, `comment`, `day`) values(?,?,?,?,?,?);";
		Date date=new Date();
		java.sql.Date sqlDate = new java.sql.Date(date.getTime());
<<<<<<< HEAD
=======
		String comments="";
		try {
			conn();
			
=======
<<<<<<< HEAD
	
	public void insert(ArrayList<Dto> dto) {
		String query="insert into board values(?,?,?,?,?);";
	
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
		String comments="";
		try {
			conn();
<<<<<<< HEAD
			
=======
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.get(0).getWritename());
			pstmt.setString(2, dto.get(0).getMoviename());
			pstmt.setString(3, dto.get(0).getTitle());
			pstmt.setString(4, dto.get(0).getContents());
			pstmt.setString(5, comments);
<<<<<<< HEAD
			pstmt.setDate(6, sqlDate);
		
		
			pstmt.executeUpdate();
			
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
=======
<<<<<<< HEAD
			pstmt.setDate(6, sqlDate);
=======
		
		
			rs = pstmt.executeQuery();
=======
	public void insert() {
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
		
		
			pstmt.executeUpdate();
			
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
	}
	public ArrayList<Dto> selectin(String num) {
		ArrayList<Dto> dtolist = new ArrayList<Dto>();
		int number = Integer.parseInt(num);
		ResultSet rs;
		try {
			conn();
			state = conn.createStatement();
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
			rs = state.executeQuery("select * from board where num='"+number+"';");
			while(rs.next()) {
				Dto dto = new Dto();
				dto.setNum(rs.getInt("num"));
				dto.setWritename(rs.getString("writename"));
				dto.setMoviename(rs.getString("moviename"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
				dto.setComment(rs.getString("comment"));
				dto.setDay(rs.getString("day"));
				dtolist.add(dto);
			}
<<<<<<< HEAD
=======
=======
			rs = state.executeQuery("select * from board;");
>>>>>>> c1c9bfc5df958588f6e52ceb3b0272d659e7c954
			
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return dtolist;
<<<<<<< HEAD
	}
	
	public void updatevalue(ArrayList<Dto> dto) {
		String writename = dto.get(0).getWritename();
		String moviename = dto.get(0).getMoviename();
		String title = dto.get(0).getTitle();
		String contents = dto.get(0).getContents();
		int num=dto.get(0).getNum();
		
		Date date=new Date();
		java.sql.Date sqlDate = new java.sql.Date(date.getTime());

		String query="update board set writename='"+writename+"',moviename='"+moviename+"',title='"+title+"',contents='"+contents+"',day='"+sqlDate+"' where num="+num+";";
		try {
			conn();
			state = conn.createStatement();
			state.executeUpdate(query);
	
		
			state.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	public void delete(int num) {

		try {
			conn();
			state = conn.createStatement();
			state.executeUpdate("delete from board where id ='"+num+"';");
			
			state.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}

=======
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
	}
	
}
