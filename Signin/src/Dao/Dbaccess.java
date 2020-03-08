package Dao;

import static Eventdb.javautil.close;

import java.sql.Connection;
import java.util.Date;

import org.apache.ibatis.reflection.SystemMetaObject;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Dto.CinemaVo;
import Dto.Dto;
import Dto.ScheduleVo;

public class Dbaccess {

	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String DB_URL = "jdbc:mysql://localhost/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8";
	private final String USER_NAME = "root";
	private final String PASSWORD = "317272";
	
	Connection conn= null;
	Statement state = null;
	PreparedStatement pstmt =null;
	
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
			rs = state.executeQuery("select * from board ORDER BY num desc limit 9;");
			while(rs.next()) {
				Dto dto = new Dto();
				dto.setNum(rs.getInt("num"));
				dto.setWritename(rs.getString("writename"));
				dto.setMoviename(rs.getString("moviename"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
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
	public int boardcount() {
		int k =0;
		ResultSet rs;
		try {
			conn();
			state = conn.createStatement();
			rs = state.executeQuery("select count(num) from board;");
			rs.last();
			k=rs.getInt(1);
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		System.out.print("아티클:"+k);
		return k;
	}
	
	public void insert(ArrayList<Dto> dto) {
		
		String query="insert into board (writename,moviename,title,contents,day,filename) values(?,?,?,?,?,?);";
		Date date=new Date();
		java.sql.Date sqlDate = new java.sql.Date(date.getTime());

		try {
			conn();
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.get(0).getWritename());
			pstmt.setString(2, dto.get(0).getMoviename());
			pstmt.setString(3, dto.get(0).getTitle());
			pstmt.setString(4, dto.get(0).getContents());
			pstmt.setDate(5, sqlDate);
			pstmt.setString(6, dto.get(0).getFilename());
		
		
			pstmt.executeUpdate();
			
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	public ArrayList<Dto> selectin(String num) {
		ArrayList<Dto> dtolist = new ArrayList<Dto>();
		int number = Integer.parseInt(num);
		ResultSet rs;
		try {
			conn();
			state = conn.createStatement();
			rs = state.executeQuery("select * from board where num='"+number+"';");
			while(rs.next()) {
				Dto dto = new Dto();
				dto.setNum(rs.getInt("num"));
				dto.setWritename(rs.getString("writename"));
				dto.setMoviename(rs.getString("moviename"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
				dto.setDay(rs.getString("day"));
				dto.setFilename(rs.getString("filename"));
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
			state.executeUpdate("delete from board where num ='"+num+"';");
			
			state.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}

	}
	////////////////////////////////////////////////////////////////////////////////////
	public ArrayList<Dto> search(String numb) {
		ArrayList<Dto> dtolist = new ArrayList<Dto>();
		ResultSet rs;
		try {
			conn();
			state = conn.createStatement();
			rs = state.executeQuery("select * from board where moviename='"+numb+"';");
			while(rs.next()) {
				Dto dto = new Dto();
				dto.setNum(rs.getInt("num"));
				dto.setWritename(rs.getString("writename"));
				dto.setMoviename(rs.getString("moviename"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
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
	
	public String searchpassword(String id) {
		ResultSet rs;
		String pw=null;
		try {
			conn();
			state = conn.createStatement();
			rs = state.executeQuery("select pw from persons where id='"+id+"';");
			if(rs.next()) {

				pw=rs.getString("pw");
				

			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return pw;
	}
	public void signout(String id) {
		Statement stmt=null;
		try {
			conn();
			stmt=conn.createStatement();
			String delete="delete from persons where id='"+id+"';";
			stmt.executeUpdate(delete);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	public ArrayList<Dto> Board(){
		ResultSet rs;
		ArrayList<Dto> dtolist = new ArrayList<Dto>();
		Statement stmt=null;
		try {
			conn();
			stmt=conn.createStatement();
			String query="select * from board order by num desc limit 9 ;";
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				Dto dto = new Dto();
				dto.setNum(rs.getInt("num"));
				dto.setWritename(rs.getString("writename"));
				dto.setMoviename(rs.getString("moviename"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
				dto.setDay(rs.getString("day"));
				dtolist.add(dto);
				System.out.println(rs.getString("moviename"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return dtolist;
		
	}
	public ArrayList<Dto> Board(int fir){
		ResultSet rs;
		ArrayList<Dto> dtolist = new ArrayList<Dto>();
		Statement stmt=null;
		try {
			conn();
			stmt=conn.createStatement();
			String query="select * from board order by num desc limit "+fir+",9 ;";
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				Dto dto = new Dto();
				dto.setNum(rs.getInt("num"));
				dto.setWritename(rs.getString("writename"));
				dto.setMoviename(rs.getString("moviename"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
				dto.setDay(rs.getString("day"));
				dtolist.add(dto);
				System.out.println(rs.getString("moviename"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return dtolist;
		
	}
	public String[] getdate(String sponsor, String si , String movie){
		String[] articlelist =null ;
		
		Statement stmt = null;
		ResultSet rs = null;
		String sql="SELECT date FROM schedule where cinecode=(select num from cinema where sponsor = \'"+sponsor+"\' and si= \'"+si+"\') and movie= \'"+movie+"\';";
	

		try{
			conn();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			System.out.println(rs);
			rs.last();
			articlelist= new String[rs.getRow()];
			rs.beforeFirst();
			int i= 0;
		
			while(rs.next()){
				
				System.out.println(rs.getDate("date").toString());
				articlelist[i]=rs.getDate("date").toString();
				System.out.println(articlelist[i]+"입력");
				i++;
			}

		}catch(Exception ex){
		}finally{

			close();
		}
	
	
	return articlelist;
	
	}
	public ArrayList<ScheduleVo> gettime(String sponsor, String si , String movie, String date){
		ArrayList<ScheduleVo> articlelist = new ArrayList<ScheduleVo>() ;
		
		Statement stmt = null;
		ResultSet rs = null;
		String sql="SELECT cine,schedule FROM schedule where cinecode=(select num from cinema where sponsor = \'"+sponsor+"\' and si= \'"+si+"\') and movie= \'"+movie+"\' and date=\'"+date+"\';";
	

		try{
			conn();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);

		
		
			while(rs.next()){
				ScheduleVo article = new ScheduleVo();
				
				article.setCine(rs.getString("cine"));
				article.setSchedule(rs.getString("schedule"));
				articlelist.add(article);
				
			}

		}catch(Exception ex){
		}finally{

			close();
		}
	
	
	return articlelist;
	
	}
	public String getcineinfo(String sponsor, String si , String cine){
		String cineinfo = null;
		String return_cineinfo = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql="SELECT cineinfo FROM cinema  where sponsor = \'"+sponsor+"\' and si= \'"+si+"\';";
	

		try{
			conn();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);

		
		
			while(rs.next()){

				
				cineinfo = rs.getString("cineinfo");
				
			}

		}catch(Exception ex){
		}finally{

			close();
		}
		String [] cinelist = cineinfo.split("/");
		 return_cineinfo= cinelist[Integer.parseInt(cine)-1];
	
	
	return return_cineinfo;
	
	}
	public ArrayList<CinemaVo> getcine(String movie){
		ArrayList<CinemaVo> return_cineinfo = new ArrayList<CinemaVo>();
		Statement stmt = null;
		ResultSet rs = null;
		String sql="SELECT doo,si,sponsor FROM userinfo.cinema where num in (select cinecode from schedule where movie='"+movie+"' and date = date(now()));";
	

		try{
			conn();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);

		
			while(rs.next()){
					CinemaVo article = new CinemaVo();
					article.setDoo(rs.getString("doo"));
					article.setSi(rs.getString("si"));
					article.setSponsor(rs.getString("sponsor"));
					return_cineinfo.add(article);
				
				
			}

		}catch(Exception ex){
		}finally{

			close();
		}
	
	return return_cineinfo;
	
	}
	
}
