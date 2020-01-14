<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<% request.setCharacterEncoding("utf-8");%>

=======
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<% request.setCharacterEncoding("utf-8");%>
=======
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
<jsp:useBean id="Dao" class="Dao.Dbaccess"></jsp:useBean>
<%
	
	String cl =request.getParameter("class");
<<<<<<< HEAD
	ArrayList<Dto> dto = new ArrayList<Dto>();
	
	if(cl.equals("insert")){
		String writename=request.getParameter("writename");
		String moviename=request.getParameter("moviename");
		String title=request.getParameter("title");
		String contents=request.getParameter("contents");
		
		
=======
<<<<<<< HEAD

	
	if(cl.equals("insert")){
		String writename=request.getParameter("writename");
		String moviename=request.getParameter("moviename");
		String title=request.getParameter("title");
		String contents=request.getParameter("contents");
		
=======
	String writename=request.getParameter("writename");
	String moviename=request.getParameter("moviename");
	String title=request.getParameter("title");
	String contents=request.getParameter("contents");
	
	
	if(cl.equals("insert")){
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
		ArrayList<Dto> dto = new ArrayList<Dto>();
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
		Dto board = new Dto();
		board.setWritename(writename);
		board.setMoviename(moviename);
		board.setTitle(title);
		board.setContents(contents);
		dto.add(board);
		Dao.insert(dto);
	
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
		response.sendRedirect("G_board.jsp");
	}
	else if (cl.equals("boardin")){
		
		String num=request.getParameter("num");
		
<<<<<<< HEAD
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
=======
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
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
		}

        }
		RequestDispatcher dispatcher = request.getRequestDispatcher("G_boardin.jsp");
<<<<<<< HEAD
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
	
		//Dao.updatevalue(dto);
		

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
=======
=======
		RequestDispatcher dispatcher=request.getRequestDispatcher("G_board.jsp");
>>>>>>> 6d0fd15ecbc736a655c537a0ef3539dd10d6690c
>>>>>>> 6f0af14b0e59773349a7f5a7310e702c39b9d694
		dispatcher.forward(request,response);
	}
%>
