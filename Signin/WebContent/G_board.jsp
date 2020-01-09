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
 	#title{
 		background:#bdbdbd;
 		border-bottom:1px solid black;
 		
 	}
 	table{
 		border-collapse:collapse;
 		text-align:center;
 	}
 	tr{
 		border-bottom:1px solid black;
 	}
 	td:first-child{
 		text-align:center;
 	}
 	tr:nth-child(2){
 		width:600px;
 	}
 	tr:nth-child(3){
 		width:600px;
 	}
 	tr:nth-child(4){
 		width:600px;
 	}
 	tr:nth-child(n+2){
 		height:200px;
 	}
 	
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
		display:inline-block;
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
</style>
 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
	<div id =mainwraper>
 	<div id = mypage>
 	<div id =titletext>영화 매거진<span id=subtitletext>| 다양한 영화정보를 공유하세요</span></div>
 	<hr style="width:90%;color:#bdbdbd;">
 	<div id=tablewrap>
 	
 		<table>
 		<tr>
 		<td id=title>번호</td>
 		<td id=title>영화</td>
 		<td id=title>제목</td>
 		<td id=title>작성자</td>
 		<td id=title>작성일</td>
 		</tr>
 		
 		<%
		ArrayList<Dto> li = data.selectall();
 		int k=li.size();
		for(int i=0;i<li.size();i++){
			
			%><tr><td><%out.println(k);%></td>
			<td><%out.println(li.get(i).getMoviename());%></td>
			<td><%out.println(li.get(i).getTitle());%></td>	
			<td><%out.println(li.get(i).getWritename());%></td>
			<td><%out.println(li.get(i).getDay()+"<br>");%></td>
			<%
			k--;
		}
	
	%>
 		</table>
 		</div>
 		<input type="button" onclick="location.href='G_write.jsp'" value="글쓰기"/>
 	</div>
 	</div>

	<%@ include file="footer.jsp" %>
 </body>
</html>