<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<body>

<%
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	String mail = request.getParameter("mail");



	Connection conn=null;
	Statement stmt = null;
	boolean b = false;

	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo","root","317272");
	if(conn==null)
		throw new Exception("디비연결 불가<br>");
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select id,mail,email from persons where id ='"+id+"' or mail='"+mail+"' and email='"+email+"';");

			if(rs.next()){
				b=true;
			%>중복된 아이디,메일입니다<% 
				
			}
			else{
				
			request.setAttribute("id",id);
			request.setAttribute("email",email);
			request.setAttribute("mail",mail);
			}
			


	}finally{
		try{
			stmt.close();
		}catch(Exception ignored){
		}
		try{
			conn.close();
		}
		catch(Exception ignored){
		}
	
	
	}
	if(b==false){
		RequestDispatcher dispatcher = request.getRequestDispatcher("Leesignjsp.jsp");
		dispatcher.forward(request,response);
	}

	%>
	</body>
	</html>
	

