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
	String totalfee = request.getParameter("totalfee");
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
	#seattable{
		width:900px;
		margin:auto;
		margin-top:50px;
		background:#333333;
		padding-bottom:80px;
		padding-top:80px;
		float:left;
	}
	#seat{
		width:35px;
		height:35px;
		background:white;
		border:1px solid black;
		margin-top:10px;
	}
	#seattable #seat:nth-of-type(3n){
		margin-right:20px;
	}
	#seattable #seat:nth-of-type(3n+1){
		margin-left:20px;
	}
	#screen{
	font-size:10pt;
	color:white;
	width:90%;
	height:20px;
	background:#bdbdbd;
	margin:0 auto 50px auto;
	}
	#result{
		color:white;
		width:300px;
		height:430px;
		background:#333333;
		margin-left:50px;
		margin-top:50px;
		background:#333333;
		padding-bottom:80px;
		padding-top:80px;
		float:left;
	
	}
	#choiceseat{
	padding-left:50px;
	padding-right:20px;
	width:auto;
	height:50px;
	border:1px white solod;

	}
	.seatinfo{
	float:left;
	width:30px;
	height:15px;
	padding:2px;
	margin-bottom:10px;
	margin-right:10px;

	border-radius:2px;
	background:red;
	}
	.left{
	float:left;
	}
	.right{
	float:right;
	}
	#resultwrap{
	text-align:left;
	margin-left:20px;
	
	}
	#resultwrap div{
	padding-bottom:10px;
	}
	#resulttitle{
	font-size:20pt;
	margin-bottom:20px;
	}
	#choicetitle{
	width:80px;
	height:50px;
	}
	#finalsubmit{
	width:120px;
	height:50px;
	border-radius:5px;
	text-align:center;
	font-size:11pt;
	background-color:#bdbdbd;
	border:none;
	color:white;
	float:right;
	margin-top:20px;
	margin-right:30px;
	}
	.finalfee{
	font-size:15pt;
	width:50%;
	display:inline-block;
	}
	#engrow{
	color:white;
	width:15px;
	display:inline-block;
	}
</style>
<script>
$(document).on("click","#seat",function(){
	var max = $("#maxperson").val()
	var count = $("#nowperson").val()
	var isred = $(this).css("background-color")
	var command=$("#choiceseat").val()
	var nowperson
	if(isred=='rgb(255, 0, 0)'){
		$(this).css("background-color","white")
		$(this).css("color","black")
		var nowperson = Number(count)-1
		$("#nowperson").val(nowperson)
		var delId = "'"+$(this).val()+"'"
		var deleteobj = document.getElementById($(this).val())
		deleteobj.remove()
		$('#finalsubmit').attr('disabled',true)
		$("#finalsubmit").css("background-color","#bdbdbd")
		return;
	}
	if(count<max){

		$(this).css("background-color","red")
		$(this).css("color","white")
		nowperson = Number(count)+1
		$("#nowperson").val(nowperson)
	
			command+="<div id="+$(this).html()+" class=seatinfo>"+$(this).html()+"</div>"
		
		$('#choiceseat').append(command)
		
		$('#finalsubmit').attr('disabled',true)
		$("#finalsubmit").css("background-color","#bdbdbd")
	}else{
		alert("인원초과")
	}
	if(nowperson==max){
		
		$('#finalsubmit').attr('disabled',false)
		$("#finalsubmit").css("background-color","red")
	}

})


</script>


 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
 		<%String resultperson = Integer.parseInt(resultadult)+Integer.parseInt(resultteen)+""; %>
			 <input id =maxperson type="hidden" value=<%=resultperson %>>
			  <input id =nowperson type="hidden" value='0'>
		
	<div id =mainwraper>
 		<div id = mypage>
 			<div id=seattable>
		 		<div id=screen>S C R E E N</div>
		 		<% for(char a='A';a<='H';a++){
		 			%><div id=engrow><%=Character.toString(a) %></div><%
		 			for(int i = 1;i<16;i++){
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
			 	<div id=resultwrap>
			 		<div id=resulttitle>영화 확인</div>
				 	<div>영화 : <%=resultmovie %></div>
				 	<div>관람일 : <%=resultday %></div>
				 	<div>관람 시간 : <%=resulttime %></div>
				 	<div>영화관 : <%=resultsite %></div>
				 	<div>성인 : <%=resultadult %> 명</div>
				 	<div>학생 : <%=resultteen %> 명</div>
				 	<div><span id=choicetitle class=left>선택좌석 : </span><div id=choiceseat> </div></div>
				 	<hr style="color:white;width:90%">
				 	<div class=finalfee>결제금액 :</div> <div class='finalfee right' ><%=totalfee %></div>
				 	<button id="finalsubmit" disabled='true'>최종 결제하기</button>
			 	</div>
		 	</div>
 		
 	</div>
 	</div>

	<%@ include file="footer.jsp" %>
 </body>
</html>