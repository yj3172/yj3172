<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="Dao" class="Dao.Dbaccess"></jsp:useBean>
<%
	
	String cl =request.getParameter("class");
	ArrayList<Dto> dto = new ArrayList<Dto>();
	
	if(cl.equals("insert")){
		String writename=request.getParameter("writename");
		String moviename=request.getParameter("moviename");
		String title=request.getParameter("title");
		String contents=request.getParameter("contents");
		String fileName1 = "";
		String fileName2 = "";
		String orgfileName1 = "";
		String orgfileName2 = "";
		
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
		
		dto=Dao.selectin(num);
	
        for(int i=0;i<dto.size();i++){
		request.setAttribute("writename",dto.get(i).getWritename());
		request.setAttribute("moviename",dto.get(i).getMoviename());
		request.setAttribute("title",dto.get(i).getTitle());
		request.setAttribute("contents",dto.get(i).getContents());
		request.setAttribute("day",dto.get(i).getDay());
		request.setAttribute("num",dto.get(i).getNum());
		if(dto.get(0).getComment()!=null){
		request.setAttribute("comments",dto.get(i).getComment());
		}

        }
		RequestDispatcher dispatcher = request.getRequestDispatcher("G_boardin.jsp");
		dispatcher.forward(request,response);
	}
	
	else if (cl.equals("update")){
			
			String num=request.getParameter("num");
			
			dto=Dao.selectin(num);
		
	        for(int i=0;i<dto.size();i++){
			request.setAttribute("writename",dto.get(i).getWritename());
			request.setAttribute("moviename",dto.get(i).getMoviename());
			request.setAttribute("title",dto.get(i).getTitle());
			request.setAttribute("contents",dto.get(i).getContents());
			request.setAttribute("day",dto.get(i).getDay());
			request.setAttribute("num",dto.get(i).getNum());
			if(dto.get(0).getComment()!=null){
			request.setAttribute("comments",dto.get(i).getComment());
			}
	
	        }
			RequestDispatcher dispatcher = request.getRequestDispatcher("G_boardup.jsp");
			dispatcher.forward(request,response);
		}
	else if (cl.equals("updatevalue")){
		
		String writename=request.getParameter("writename");
		String moviename=request.getParameter("moviename");
		String title=request.getParameter("title");
		String contents=request.getParameter("contents");
		String numS=(String)request.getParameter("num");
		int num =Integer.parseInt(numS);
		
		Dto board = new Dto();
		board.setWritename(writename);
		board.setMoviename(moviename);
		board.setTitle(title);
		board.setContents(contents);
		board.setNum(num);
		dto.add(board);
	
		Dao.updatevalue(dto);
		

		request.setAttribute("writename",dto.get(0).getWritename());
		request.setAttribute("moviename",dto.get(0).getMoviename());
		request.setAttribute("title",dto.get(0).getTitle());
		request.setAttribute("contents",dto.get(0).getContents());
		request.setAttribute("day",dto.get(0).getDay());
		request.setAttribute("num",dto.get(0).getNum());
		if(dto.get(0).getComment()!=null){
		request.setAttribute("comments",dto.get(0).getComment());
		}
		
        
		RequestDispatcher dispatcher = request.getRequestDispatcher("G_boardin.jsp");
		dispatcher.forward(request,response);
	
	}
	else if (cl.equals("delete")){
		
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		Dao.delete(num);
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("G_board.jsp");
		dispatcher.forward(request,response);
	}
%>
