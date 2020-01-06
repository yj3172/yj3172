<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String y ="";
	y=request.getParameter("fail");
	if(y==null){
	y="";
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
	<link rel="stylesheet" type="text/css" href="css/css2.css"/>
 </head>
	
<script src="js/idmail.js"></script>


 <body bgcolor="#364f6b">
	 <%@ include file="header.jsp" %>
	<form name=signupform method ="post" action="idmailcheck.jsp" >
  <h1 style="margin-top:250px;">GERFLEX 회원가입</h1>
  <center><div id=box1 align="center">
  <table cellpadding=5 cellspacing=0 align="center">
  	<tr>
		<td><font color="red">*</font>아이디 </td><td></td>
		
		
	</tr>

	<tr>
		<td colspan="2"><input type = "text" name ="id" size="40" maxlength="20"></td><td><%
		if(y.equals("fail")){%><div style="color:red; font-size:9pt;">중복된아이디입니다</div><%
		}
		%><td>
		
	</tr>	
	
	<tr>
		<td><font color="red">*</font>이메일 </td>
	</tr>
	<tr>
		<td colspan ="3"> <input type = "text" name ="email" size="40" maxlength="20""> @
	<select name = "mail">
		<option value="naver.com">naver.com</option>
		<option value="yahoo.com">yahoo.com</option>
		<option value="gmail.com">gmail.com</option>
		<option value="hanmail.com">hanmail.com</option>
		<option value="daum.net">daum.net</option>
		<option value="nate.com">nate.com</option>
		</select>
		</td>
	</tr>
	</table>
	<hr width=80% color="#EAEAEA">
	</form>
	<input type="button" id ="sign" name=signin value="다음단계" onclick=signup() style = "width:500px;height:40px;"> 

  </div>
  	<div class=notice style="margin-bottom:180px;">Note : It is our responsibillity to protect your privacy and we 
	gurantee that your data will be completely confidential.</div>
	
  </center>
  <%@ include file="footer.jsp" %>
 </body>
</html>
