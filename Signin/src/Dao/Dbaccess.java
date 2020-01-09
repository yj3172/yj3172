package Dao;

import java.sql.Connection;
<<<<<<< HEAD
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;


=======
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.omg.CORBA.Request;
>>>>>>> c1c9bfc5df958588f6e52ceb3b0272d659e7c954

import Dto.Dto;

public class Dbaccess {

	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
<<<<<<< HEAD
	private final String DB_URL = "jdbc:mysql://localhost/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8";
=======
	private final String DB_URL = "jdbc:mysql://localhost/userinfo";
>>>>>>> c1c9bfc5df958588f6e52ceb3b0272d659e7c954
	private final String USER_NAME = "root";
	private final String PASSWORD = "317272";
	
	Connection conn= null;
	Statement state = null;
<<<<<<< HEAD
	PreparedStatement pstmt =null;
=======

>>>>>>> c1c9bfc5df958588f6e52ceb3b0272d659e7c954
	
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
			rs = state.executeQuery("select * from board;");
			while(rs.next()) {
				Dto dto = new Dto();
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
<<<<<<< HEAD
	
	public void insert(ArrayList<Dto> dto) {
		String query="insert into board values(?,?,?,?,?);";
	
		String comments="";
		ResultSet rs;
		try {
			conn();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.get(0).getWritename());
			pstmt.setString(2, dto.get(0).getMoviename());
			pstmt.setString(3, dto.get(0).getTitle());
			pstmt.setString(4, dto.get(0).getContents());
			pstmt.setString(5, comments);
		
		
			rs = pstmt.executeQuery();
=======
	public void insert() {
		
		
		ResultSet rs;
		try {
			conn();
			state = conn.createStatement();
			rs = state.executeQuery("select * from board;");
>>>>>>> c1c9bfc5df958588f6e52ceb3b0272d659e7c954
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	
}
