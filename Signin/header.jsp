<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	String s ="";
	s=request.getParameter("log");
	if(s==null){
	s="";
	}

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
  
 </head>
 <body>
 	<header>
	<span id = menulogo><a id=logo href="port.jsp">GETFLEX</a></span>
	
	<div id =headermenuright>
	<% if (s.equals("ok")) {%>
	<ul>
		<li class = menuright><a href="logout.jsp">logout</a></li>|
		<li class = menuright>${id}님 환영합니다</li>|
		<li class = menuright><a href="">Mypage</a></li>
	</ul>
	<%} else if(s.equals("")) { %>
	<ul>
		<li class = menuright><a href="login.jsp">Login</a></li>|
		<li class = menuright><a href="idsignup.jsp">Signup</a></li>|
		<li class = menuright><a href="login.jsp">Mypage</a></li>
	</ul>
	<%}%>
	</div>
	
	</header>
	<nav>
		<div id=headermenu>
	<ul class = headermenu>
		<li class = menuleft><a href="movie.jsp">예매</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="#">영화먼저검색</a></li>
			   <li><a href="#">날짜먼저검색</a></li>
			   <li><a href="#">극장먼저검색</a></li>
			   </div>
			</ul>
			</li>
		<li class = menuleft><a href="">영화</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="#">현재상영작</a></li>
			   <li><a href="#">상영예정작</a></li>
			   <li><a href="#">무비파인더</a></li>
			   	</div>
			</ul>
			</li>
		<li class = menuleft><a href="">영화관</a>
		<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="#">서울/경기</a></li>
			   <li><a href="#">충청</a></li>
			   <li><a href="#">인천</a></li>
			   <li><a href="#">강원</a></li>
			   <li><a href="#">경북</a></li>
			   <li><a href="#">경남</a></li>
			   <li><a href="#">전남</a></li>
			   <li><a href="#">전북</a></li>
			   <li><a href="#">제주</a></li>
			   	</div>
			</ul>
			</li>
		<li class = menuleft><a href="">스토어</a></li>
		<li class = menuleft><a href="">이벤트</a></li>
		<li class = menuleft><a href="">영화매거진</a></li>
	</ul>
	</div>

	</nav>
	
	
 </body>
</html>
