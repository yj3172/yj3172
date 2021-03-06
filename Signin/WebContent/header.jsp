<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.Optional" %>
<%
	Optional<String> logcheck = Optional.ofNullable((String)session.getAttribute("log"));	
	String s = logcheck.orElse("not");
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

	<link href="css/header.css" rel="stylesheet">

 </head>
 <body>
 	<header>
	<span id = menulogo><a id=logo href="index.jsp">GETFLEX</a></span>
	
	<div id =headermenuright>
	<% if (s.equals("ok")) {%>
	<ul>
		<li class = menuright><a href="L_logout.jsp">로그아웃</a></li>|
		<li class = menuright>${id}님 환영합니다</li>|
		<li class = menuright><a href="I_mypage_info.jsp?id="+${id}>마이페이지</a></li><!--여기수정-->
	</ul>
	<%} else if(s.equals("not")) { %>
	<ul>
		<li class = menuright><a href="L_login.jsp">로그인</a></li>|
		<li class = menuright><a href="L_idsignup.jsp">회원가입</a></li>|
		<li class = menuright><a href="L_login.jsp">마이페이지</a></li>
	</ul>
	<%}%>
	</div>
	
	</header>
	<nav>
		<div id=headermenu>
	<ul class = headermenu>
		<li class = menuleft><a href="">예매</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="B_movie.jsp?which=movie">영화먼저검색</a></li>
			   <li><a href="B_movie.jsp?which=cinema">극장먼저검색</a></li>
			   </div>
			</ul>
			</li>
		<li class = menuleft><a href="M_now_movie.jsp">영화</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="M_now_movie.jsp">현재상영작</a></li>
			   <li><a href="#">상영예정작</a></li>
			   <li><a href="#">무비파인더</a></li>
			   	</div>
			</ul>
			</li>
		<li class = menuleft><a href="">영화관</a>
		<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="C_cinema.jsp?locate=서울">서울</a></li>
			   <li><a href="C_cinema.jsp?locate=경기">경기</a></li>
			   <li><a href="C_cinema.jsp?locate=충청">충청</a></li>
			   <li><a href="C_cinema.jsp?locate=강원">강원</a></li>
			   <li><a href="C_cinema.jsp?locate=전라">전라</a></li>
			   <li><a href="C_cinema.jsp?locate=경상">경상</a></li>
			   <li><a href="C_cinema.jsp?locate=제주">제주</a></li>
		
			   	</div>
			</ul>
			</li>
		<li class = menuleft><a href="store.bo">스토어</a></li>
		<li class = menuleft><a href="EventlistPro.bo">이벤트</a></li>
		<li class = menuleft><a href="action.jsp?class=search">영화매거진</a></li>
	</ul>
	</div>
	

	</nav>
	
	
 </body>
</html>
