<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.List"%>
   <%@ page import="Dto.ScheduleVo"%>
   
   <%@ page import="mybatmodel.*" %>
<%
String si = (String)request.getParameter("si");
String sponsor = (String)request.getParameter("sponsor");
String movie = (String)request.getParameter("movie");
System.out.println(movie+si+sponsor);
String command =(String)request.getParameter("command");
action1 act = new action1();
 		
if(command.equals("getmovie")){ 
	List<ScheduleVo> li =act.selectmovielist(si, sponsor);%>
[
<%for(int i=0;i<li.size();i++){%>		
{
"movie":"<%=li.get(i).getMovie() %>"
}<%if(i!=li.size()-1){ %>,<%} %>
<%}%>

]
<%}

else if(command.equals("getdate")){ 	
	List<ScheduleVo> li =act.selectmovielist_getdate(si, sponsor, movie);%>
[
<%for(int i=0;i<li.size();i++){%>		
{
"schedule":"<%=li.get(i).getSchedule() %>"

}<%if(i!=li.size()-1){ %>,<%} %>
<%}%>

]
<%}%>
