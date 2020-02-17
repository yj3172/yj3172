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
		width:90%;
		height:500px;
		background:#333333;
		margin:50px auto 0 auto;
		color:white;
	}
	#bookingtitle{
		font-size:20pt;
		margin:0 0 30px 0;
		padding-top:30px;
	}
	hr{
	width:90%;
	color:#BDBDBD;
	}
	#booking{
	height:60px;
	width:200px;
	color:white;
	background: #064461;
	background: linear-gradient(#003040, #002535);
	margin-right:50px;
	border:1px solid #064461;
	cursor:pointer;
	}
	#main{
	height:60px;
	width:200px;
	color:#064461;
	background:white;
	border:1px solid #064461;
	cursor:pointer;
	}
	#titletext{
	clear:both;
	float:left;
	width:80px;
	height:40px;

	display:inline-block;
	padding-bottom:20px;
	
	}
	#wrapper{
	width:50%;
	margin:auto;
	}
	#contentstext{
	width:80%;
	float:left;
	text-align:center;
	}
	.red{
	color:red;
	}
</style>

 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
 		
	<div id =mainwraper>
 		<div id = mypage>
 		<div id =bookingcheck>
 		<div id = bookingtitle> 티켓 예매가 <span class=red>완료</span>되었습니다 언제나 GETFLEX와 함께!!</div>
 		<hr>
 		<div id= wrapper>
 		<div><div id=titletext>구매영화</div><span id=contentstext><%=nowticket.getMoviename() %></span></div>
 		<div><div id=titletext>영화관</div><span id=contentstext><%=nowticket.getCinema() %></span></div>
 		<div><div id=titletext>구매아이디</div><span id=contentstext><%=nowticket.getId() %></span></div>
 		<div><div id=titletext>좌석</div><span id=contentstext><%=nowticket.getSeat() %></span></div>
 		<div><div id=titletext>시간</div><span id=contentstext><%=nowticket.getCine() %>관 <%=nowticket.getTime() %></span></div>
 		</div>
 		<hr>
 		<input type="button" value="다른티켓 예매" id="booking" onclick="location.href='B_movie.jsp'">
		<input type="button" value="메인으로" id="main"onclick="location.href='index.jsp'" >
		</div>
		
			 		
		 		
 	</div>
 	</div>

	<%@ include file="footer.jsp" %>
 </body>
</html>