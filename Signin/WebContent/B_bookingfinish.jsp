<%@page import="mybatmodel.ticketingvo"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<%@ page import ="mybatmodel.commentdto" %>
<%@ page import ="mybatmodel.action1" %>
<%@ page import = "java.util.Optional" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% ticketingvo nowticket = (ticketingvo) request.getAttribute("article");


%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 </head>
 <style>
 #mainwraper{
		text-align:center;
	}
 	
 	#mypage{
 		clear:both;
		width:1300px;
		height:100%;
		border:solid black 1px;
		display:inline-block;
		margin:250px auto 60px auto;
		padding:0 30px 60px 30px;
		background-color:#f9f6f7;
		border-radius:10px;
		margin-top:250px;
		text-align:center;
		display:inline-block;
	}
	#bookingcheck{
		width:500px;
		height:500px;
		background:#333333;
		margin:200px auto 0 auto;
		color:white;
	}
</style>

 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
 		
	<div id =mainwraper>
 		<div id = mypage>
 		<div id =bookingcheck>
 		<%=nowticket.getMoviename() %>
 		<%=nowticket.getCine() %>
 		<%=nowticket.getCinema() %>
 		<%=nowticket.getId() %>
 		<%=nowticket.getSeat() %>
 		<%=nowticket.getTime() %>
		</div>
		 		
		 		
 	</div>
 	</div>

	<%@ include file="footer.jsp" %>
 </body>
</html>