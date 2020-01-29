<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<%@ page import ="mybatmodel.commentdto" %>
<%@ page import ="mybatmodel.action1" %>

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
	#btn{
		
		margin-right:20px;
		width:80px;
		height:35px;
		background:#f45905;
		color:white;
		border:none;
		cursor:pointer;
		font-size:10pt;
	}
	#comment{
		resize:none;
		padding:30px;
		height:60px;
		width:1000px;
		
	}
	#cmtbtn{
		float:right;
		width:120px;
		height:120px;
		background:#f45905;
		color:white;
		border:none;
		cursor:pointer;
		font-size:17pt;
	}
	#commenttitle{
		float:left;
		margin: 20px 0 20px 30px;
		font-size:18pt;		
	}
	pre{
	white-space: pre-wrap;
	}
	#reply{
	background:white;
	width:1200px;
	height:80px;
	
	margin-left:40px;
	margin-right:40px;
	margin-top:20px;
	
	}
	
</style>
<script>
	function delcheck(){
		var check = confirm("정말 삭제하시겠습니까");
		if(check){
			location.href='action.jsp?class=delete&num='+<%=request.getAttribute("num") %>
		}
	}
</script>
 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
	<div id =mainwraper>
 	<div id = mypage>
 	<div id =titletext>영화 매거진<span id=subtitletext>| 다양한 영화정보를 공유하세요</span><% 
		if(session.getAttribute("id")==null){	
		}
 		else if (session.getAttribute("id").equals((String)request.getAttribute("writename"))){ 
 			String uplink ="location.href='action.jsp?class=update&num="+request.getAttribute("num")+"'";
 		%>	<div style="float:right;margin-right:100px;margin-top:-10px;">
 			
 			<input id =btn type="button" onclick=<%= uplink %> value="수정"/>
 			<input id= btn type="button" onclick=delcheck() value="삭제"/>
 			</div>
 			
 		<%} %></div>
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
 		<% String imgurl ="upload/"+(String)request.getAttribute("filename"); 
 		%>
 		<div id =boardmain><div style="text-align:center; width:100%;"><img src="<%=imgurl %>" style="width:350px; height:100%;"/></div><pre>${contents}</pre></div>
 		<hr style="width:100%;opacity:0.5;">
 		<%	
 			int num = (int)request.getAttribute("num");
 			String nums = ""+num;
 			action1 cmtdata = new action1();
 			System.out.print("아티클넘버:"+num);
 			List<commentdto> comment = cmtdata.selectcomment(nums);
 			System.out.print("리스트사이즈:"+comment.size());
 		%>
 		<div id =commenttitle style="float:left;">댓글(<%=comment.size() %>)</div>
 		<div style="clear:both;float:left;"><input type=text id=comment placeholder="악성 및 비방댓글은 경고없이 삭제됩니다"><input id=cmtbtn type="button"  value="등록"/></div>
 		
 		
 	
 		</div>
 		
 		<%for (int i=0;i<comment.size();i++){%>
 			<div id="reply" style="clear:both;float:left;"><%=comment.get(i).getComment() %></div>
 			
 		<%}%>
 		
 	</div>
 	</div>

	<%@ include file="footer.jsp" %>
 </body>
</html>