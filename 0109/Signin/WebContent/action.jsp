<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<jsp:useBean id="Dao" class="Dao.Dbaccess"></jsp:useBean>
<%
	
	String cl =request.getParameter("class");
	String writename=request.getParameter("writename");
	String moviename=request.getParameter("moviename");
	String title=request.getParameter("title");
	String contents=request.getParameter("contents");
	
	
	if(cl.equals("insert")){
		ArrayList<Dto> dto = new ArrayList<Dto>();
		Dto board = new Dto();
		board.setWritename(writename);
		board.setMoviename(moviename);
		board.setTitle(title);
		board.setContents(contents);
		dto.add(board);
		Dao.insert(dto);
	
		RequestDispatcher dispatcher=request.getRequestDispatcher("G_board.jsp");
		dispatcher.forward(request,response);
	}
%>
