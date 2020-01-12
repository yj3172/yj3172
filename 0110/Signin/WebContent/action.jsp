<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="Dao" class="Dao.Dbaccess"></jsp:useBean>
<%
	
	String cl =request.getParameter("class");

	
	if(cl.equals("insert")){
		String writename=request.getParameter("writename");
		String moviename=request.getParameter("moviename");
		String title=request.getParameter("title");
		String contents=request.getParameter("contents");
		
		ArrayList<Dto> dto = new ArrayList<Dto>();
		Dto board = new Dto();
		board.setWritename(writename);
		board.setMoviename(moviename);
		board.setTitle(title);
		board.setContents(contents);
		dto.add(board);
		Dao.insert(dto);
	
		response.sendRedirect("G_board.jsp");
	}
	else if (cl.equals("boardin")){
		
		String num=request.getParameter("num");
		
		ArrayList<Dto> li = Dao.selectin(num);
	
        for(int i=0;i<li.size();i++){
		request.setAttribute("writename",li.get(i).getWritename());
		request.setAttribute("moviename",li.get(i).getMoviename());
		request.setAttribute("title",li.get(i).getTitle());
		request.setAttribute("contents",li.get(i).getContents());
		request.setAttribute("day",li.get(i).getDay());
		request.setAttribute("num",li.get(i).getNum());
		if(li.get(0).getComment()!=null){
		request.setAttribute("comments",li.get(i).getComment());
		}

        }
		RequestDispatcher dispatcher = request.getRequestDispatcher("G_boardin.jsp");
		dispatcher.forward(request,response);
	}
%>
