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
	ul{
	 list-style:none;
	 text-align:left;
	}
	textarea{
	width:600px;
	height:700px;
	resize:none;
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
 	<form method="post" action="action.jsp?class=insert">
 		<ul>글 작성하기
 		<li>작성자<input type="text" name="writename" size="10" value=${id} readonly></li>
 		<li>영화<select name="moviename">
 		<option value="해리포터">해리포터</option>
 		<option value="1917">1917</option>
 		<option value="미드웨이">미드웨이</option>
 		<option value="슈렉">슈렉</option>
 		<option value="짱구는못맗려">짱구는못말려</option>
 		<option value="아무튼영화">아무튼영화</option>
 		</select></li>
 		<li>제목<input type="text" name="title" size="30"></li>
 		<li>본문<textarea id= contents name="contents"></textarea></li> 		
 		
 		</ul>
 		
 		</div>
 		<input type="submit" onclick="location.href='#'" value="등록하기"/>
 		</form>
 	</div>
 	</div>
	
	<%@ include file="footer.jsp" %>
 </body>
</html>