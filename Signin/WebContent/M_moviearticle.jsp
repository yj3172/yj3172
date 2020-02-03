<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List"%>
<%@ page import="Dto.navermovie_article_dto" %>
<%@ page import="Apicon.Navermovie" %>
<%
	String y ="";
	y=request.getParameter("fail");
	if(y==null){
	y="";
	}
	
	String title=request.getParameter("title") ;
	Navermovie nmn= new Navermovie();
	
	List<navermovie_article_dto> li = nmn.moviearticle(title);
	if(li==null){
		System.out.print("눌값@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
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
	height:auto;
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

</style>


 <body bgcolor="#364f6b">
	 <%@ include file="header.jsp" %>

	 <div id=cm>
	<div id = mypage>
	<%=li.get(0).getActor() %>
  <div id = infobox>
	
  </div>
  </div>
  </div>
	<%@ include file="footer.jsp" %>
 </body>
</html>