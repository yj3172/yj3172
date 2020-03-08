<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="mybatmodel.action1" %>
<%@ page import="java.util.List" %>
<%@ page import="Dto.CinemaVo" %>

<%
	String where = request.getParameter("locate");
	action1 act = new action1();
	List<CinemaVo> li =act.Cinemalist(where);
	
	
%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>영화비교</title>
  <!-- jQuery library (served from Google) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- bxSlider Javascript file -->
	<script src="bxslider-4-master\bxslider-4-master\dist/jquery.bxslider.min.js"></script>
	<!-- bxSlider CSS file -->
	<link href="bxslider-4-master\bxslider-4-master\dist/jquery.bxslider.css" rel="stylesheet" />
	<link href="css/cssindex.css" rel="stylesheet">
	<script src="js/scriptindex.js"></script>
<style>
	#box1{
	
		width:1300px;
		height:500px;
		border:solid black 1px;

		background-color:#f9f6f7;
		border-radius:10px;
		margin:250px auto 60px auto;
		padding:0 30px 60px 30px;
		text-align:center;
	
	}
	.logo{
	width:50px;
	height:50px;
	margin:0 14% 0 14%;
	}
	.article{
	width:60%;
	margin:auto;
	text-align:left;
	padding:15px 0 15px 0;
	}
	.cinemalist{
	float:left;
	width:23%;
	margin:0 5% 0 5%;
	height:300px;
	color:white;
	text-align:center;
	background:linear-gradient(#003040, #002535);
	overflow-y:scroll;
	
	
	}




</style>
  
 </head>
 <body>
	<%@ include file="header.jsp" %>
	 <body bgcolor="#364f6b">
	
 	<div id=box1>
 	<h2>극장정보 : <%=li.get(0).getDoo() %></h2>
 	<div id=imgwrap>
 	<img class=logo src="img/sponlogo/cgv.jpg">
 	<img class=logo src="img/sponlogo/mega.jpg">
 	<img class=logo src="img/sponlogo/lotte.jpg">
 	</div>
 	<div class=cinemalist>
 	<%for(int i=0 ; i < li.size(); i++){ 
 	String sponname=li.get(i).getSponsor();%>
 		<%if(sponname.equals("CGV")){ %>
 	<div class=article>

 	
 	<%=li.get(i).getSi() %>
 	<%=li.get(i).getSponsor() %>
 	
 	 	
 	</div>
 	
 	
 	<%} %>
 	<%} %>
 	</div>
 	<div class=cinemalist>
 	<%for(int i=0 ; i < li.size(); i++){ 
 	String sponname=li.get(i).getSponsor();%>
 	 	<%if(sponname.equals("메가박스")){ %>
 	<div class=article>
 	 	



 	
 	<%=li.get(i).getSi() %>
 	<%=li.get(i).getSponsor() %>
 	
 	 
 	</div>

 	
 		<%} %>
 	 	<%} %>
	 	</div>
 	<div class=cinemalist>
 	<%for(int i=0 ; i < li.size(); i++){ 
 	String sponname=li.get(i).getSponsor();%>
 		<%if(sponname.equals("롯데시네마")){ %>
 	
 	<div class=article>
 	 	
 

 	
 	<%=li.get(i).getSi() %>
 	<%=li.get(i).getSponsor() %>
 	
 	 	
 	</div>
 	<%} %>
 	<%} %>
 	</div>
 	</div>
 	


  
	<%@ include file="footer.jsp" %>
	
 </body>
</html>
