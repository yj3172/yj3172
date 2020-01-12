<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>

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
 <style>
 	
 	#mypage{
 		clear:both;
		width:1300px;
		height:100%;
		border:solid black 1px;
		display:inline-block;
		margin:250px 60px auto auto;
		background-color:#f9f6f7;
		border-radius:10px;
		margin-top:250px;
		text-align:center;
		display:inline-block;
	}
	#tablewrap{
		width:1200px;
		margin:0 auto;
	}
	#mainwraper{
		text-align:center;
	}
	#titletext{
		font-size:20pt;
		text-align:left;
		margin-left:50pt;
		
		margin-top:30pt;
	}
	#subtitletext{
		font-size:15pt;
	}
	#boardtitle{
		width:1100px;
		margin-top:20pt;
		margin-bottom:20pt;
		font-weight:bold;
		font-size:20pt;
	}
	#boardday{
	
		margin-left:30px;
	}
	#boardmain{
	margin:0 auto;
	width:90%;
	min-height:600px;
	text-align:left;
	}
	#subcolor{
		opacity:0.5;
	}
	#boardcontents{
		list-style:none;
		text-align:right;
	}
	#boardli{
	display:inline;
	margin:10px 10px;
	}
</style>
 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
	<div id =mainwraper>
 	<div id = mypage>
 	<div id =titletext>영화 매거진<span id=subtitletext>| 다양한 영화정보를 공유하세요</span></div>
 	<hr style="width:90%;color:#bdbdbd;">
 	<div id=tablewrap>
 
 		<div id =boardtitle>[${moviename}]${title}</div>
 		<div id =boardsub><ul id=boardcontents>
 		<li id=boardli>작성자:${writename}</li>
 		<li id=boardli>|</li>
 		<li id=boardli><span id =subcolor>${day}</span></li>
 		</ul>
 		</div>
 		<hr style="width:100%;opacity:0.5;">
 		<div id =boardmain>${contents}</div>
 		<hr style="width:100%;opacity:0.5;">
 		<div>댓글:<span>${comments}</span></div>
 	
 	
 		</div>
 		<% if(session.getAttribute("id").equals((String)request.getAttribute("writename"))){ 
 			String uplink ="location.href='action.jsp?class=update&num="+request.getAttribute("num")+"'";
 			String delink ="location.href='action.jsp?class=delete&num="+request.getAttribute("num")+"'";
 		%>
 			<input type="button" onclick=<%= uplink %> value="수정"/>
 			<input type="button" onclick=<%= delink %> value="삭제"/>
 		<%} %>
 		
 		
 	</div>
 	</div>

	<%@ include file="footer.jsp" %>
 </body>
</html>