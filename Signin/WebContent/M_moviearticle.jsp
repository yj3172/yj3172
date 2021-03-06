<%@page import="Apicon.Crawling"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List"%>
<%@ page import="Dto.navermovie_article_dto" %>
<%@ page import="Apicon.Navermovie" %>
<%
	
	
	String title=request.getParameter("title") ;
	Navermovie nmn= new Navermovie();
	
	List<navermovie_article_dto> li = nmn.moviearticle(title);
	Crawling crawl = new Crawling();
	String [] actorimg = crawl.naveractorimage(li.get(0).getUrl());
	String [] actorname = crawl.naveractorname(li.get(0).getUrl());

	
%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
    	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <title>Document</title>

 </head>
	
<script src="js/signout.js"></script>
<style>

#mypage{
width:1300px;
height:100%;
border:solid black 1px;
margin:60px 0;
background-color:#f9f6f7;
border-radius:10px;
margin-top:250px;
text-align:left;
margin-left:auto;
margin-right:auto;
padding-bottom:5%;
}

#infobox{
	position:relative;
	top:50px;
	width:90%;
	height:1200px;
	background:#333333;
	margin:0 auto;
	box-shadow: 
		0 5px 15px 1px rgba(0, 0, 0, 0.6), 
		0 0 200px 1px rgba(255, 255, 255, 0.5);
	margin-top:10px;
	color:white;
	padding-top:20px;
	padding-bottom:50px;
	margin-bottom:50px;

}
#movieinfowrap{
float:left;

}
#movieposter{
width:300px;
height:auto;
float:left;
margin:5%;
}
#movietitle{
float:left;
font-size:30pt;
}
#moviesubtitle{
clear:both;
float:left;
padding-top:14pt;
font-size:20pt;
opacity:0.7;
}
#movieinfowrap div{
clear:both;
float:left;
}


#movieinfowrap div:nth-child(1){
padding-top:40px;
}
#movieinfowrap div:nth-child(n+2){
margin-top:20px;
}
#booking{
border:1px solid #FF243E;
background:#FF243E;
padding:10px 30px 10px 30px;
border-radius:5px;
}
#movieinfo{
clear:both;
float:left;
width:80%;
margin-left:5%;
}
h2{
margin-top:30px;
margin-left:5%;
clear:both;
float:left;}
#actorinfo{
clear:both;
float:left;
margin-left:5%;
}
#actorarticle{
float:left;
}

</style>




 <body bgcolor="#364f6b">
	 <%@ include file="header.jsp" %>

	 <div id=cm>
	<div id = mypage>
	
  <div id = infobox>
    <img id= movieposter src=<%=li.get(0).getImglink() %>>
	<div id=movieinfowrap> 
		 <div id=movietitle><%=li.get(0).getTitle() %></div>
		 <div id=moviesubtitle> <%=li.get(0).getSubtitle() %></div>
		 
		 <div id=opendt> <%=li.get(0).getOpenday() %></div>
		 <div id=moviedirector> 감독 : <%=li.get(0).getDirector() %></div>
		 <div id= movieactor>배우: <%=li.get(0).getActor() %></div>
		 <div id= movieuserrating>평점: <%=li.get(0).getUserrating() %></div>
		<%
		String movie = li.get(0).getTitle().substring(3);
		String movie2 = movie.substring(0,movie.length()-4);
		String bookingurl = "location.href =\'B_movie.jsp?which=movie&title="+movie2+"\'"; 
		%>
		 <div id = booking onclick="<%=bookingurl%>">예매</div>
		
		
	</div>
	<h2>시놉시스</h2>
 <div id = movieinfo><%=li.get(0).getContents() %></div>
 	<h2>감독/배우</h2>
 	<div id = actorinfo><% for(int i= 0; i<actorimg.length;i++){
 				%><div id=actorarticle><img style="width:130px;" src =<%=actorimg[i] %> ><%if(i==0){
 					%><div id=job>감독</div><%=actorname[i] %> <% 
 				}else{
 					%><div id=job>배우</div><%=actorname[i] %><%
 				}%></div><%
 	}%></div>
 
 	
  </div>
  </div>
  </div>
	<%@ include file="footer.jsp" %>
 </body>
</html>