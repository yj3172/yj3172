<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");%>
<%
	String id=(String)session.getAttribute("id");
	
	Connection conn=null;
	Statement stmt=null;;
	boolean ab=false;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8","root","317272");
		stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery("select id,pw,name,email,adr from persons where id='"+id+"';");
		if(rs.next()){	
			ab=true;
			String pw=rs.getString("pw");
			String name=rs.getString("name");
			String email=rs.getString("email");
			String adr=rs.getString("adr");

			
			request.setAttribute("id",id);
			request.setAttribute("pw",pw);
			request.setAttribute("name",name);
			request.setAttribute("email",email);
			request.setAttribute("adr",adr);
	
		}
	}finally{
		try{
			stmt.close();
		}catch(Exception ignored){
		}
		try{
			conn.close();
		}catch(Exception ignored){
		} }

		if(ab==true){
		RequestDispatcher dispatcher=request.getRequestDispatcher("I_mypage.jsp");
		dispatcher.forward(request,response);
			}
		else {
		response.sendRedirect("I_delete_search.jsp");
			}
		//requestdispatcher는 request.된애만 넘겨줌
		//sendredirect는 그냥 a링크같은개념 링크만넘겨줌  정보넘기고싶으면
		//response.sendRedirect("dbconnection_exam03_4.jsp?name="+name); 이런식으로 넘겨야함
		%>
