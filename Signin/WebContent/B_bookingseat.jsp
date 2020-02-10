<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<%@ page import ="mybatmodel.commentdto" %>
<%@ page import ="mybatmodel.action1" %>
<%@ page import = "java.util.Optional" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% 
	Optional<String> personadult = Optional.ofNullable(request.getParameter("resultadult"));
	Optional<String> personteen=Optional.ofNullable(request.getParameter("resultteen"));
	String resultmovie = request.getParameter("resultmovie");
	String resultsite = request.getParameter("resultsite");
	String resultday = request.getParameter("resultday");
	String resulttime = request.getParameter("resulttime");
	String resultadult = personadult.orElse("없음");
	String resultteen = personteen.orElse("10대 선택 없음");

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
	#tablewrap{
		width:1200px;
		margin:0 auto;
	}
	#mainwraper{
		text-align:center;
	}
	#result{
		color:white;
		width:300px;
		height:500px;
		background:#333333;
	}
	#seattable{
		width:500px;
		margin:auto;
		margin-top:50px;
		background:#333333;
		padding-bottom:80px;
		padding-top:80px;
	}
	#seat{
		width:30px;
		height:30px;
		background:white;
		border:1px solid black;
		margin-top:10px;
	}
	#title{
	font-size:20pt;
	color:white;
	}
	
</style>


 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
	<div id =mainwraper>
 	<div id = mypage>
 	<div id=seattable>
 		<div id=title>좌석선택</div>
 		<% for(char a='A';a<='H';a++){
 			for(int i = 1;i<10;i++){
 				String seat = Character.toString(a)+i+"";
 				%><button id =seat value=<%=seat %>>
 				<%=seat %>
 				</button>
 				<% 
 			}
		%><br><% 	
 		}
 		
 		%>
 	</div>
		 	<div id =result>
		 	<%=resultmovie %>
		 	<%=resultday %>
		 	<%=resulttime %>
		 	<%=resultsite %>
		 	<%=resultadult %>
		 	<%=resultteen %>
		 	</div>
 		
 	</div>
 	</div>

	<%@ include file="footer.jsp" %>
 </body>
</html>