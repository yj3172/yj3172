<%@ page language="java" contentType="text/html; charset=utf-8"%>

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
  <!-- jQuery library (served from Google) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- bxSlider Javascript file -->
	<script src="bxslider-4-master\bxslider-4-master\dist/jquery.bxslider.min.js"></script>
	<!-- bxSlider CSS file -->
	<link href="bxslider-4-master\bxslider-4-master\dist/jquery.bxslider.css" rel="stylesheet" />
	<link href="css/cssindex.css" rel="stylesheet">
	<script src="js/scriptindex.js"></script>

<style>
#eventbox{
		background-color:#f9f7f7;
		width:100%;
		height:100%;
		text-align:center;
		padding-bottom:30px;
	}
	#eventcontentbox{
		width:880px;
		height:100%;
		display:inline-block;
	}
	.eventimg{
		margin:10px;
	}
	.eventimglar{
		margin:10px;
		width:250px;
		height:475px;
		position:relative;
		right:70px;
	}
	#boxoffice{
		border-top:;
		margin-top:50px;
		text-align:center;
		width:100%;
		height:600px;
		background-color:hsla(120, 0%, 50%, 0.1);
	}
</style>

  
 </head>
	<%@ include file="header.jsp" %>
	<div id=bxsilderwrapper style="margin-top:200px;">
		<ul class="bxslider" style="z-index:50;">
		  <li><img src="img/slide1.jpg" /></li>
		  <li><img src="img/slide2.jpg" /></li>
		  <li><img src="img/slide3.jpg" /></li>
		  <li><img src="img/slide4.jpg" /></li>
		</ul>
		</div>

		<div id=boxoffice>
		<h1 class=maintitle>BOX OFFICE</h1>
		</div>
	<div id=eventbox>
		<h1 class=maintitle>EVENT</h1>
		<div id =eventcontentbox>
		<a href="#"><img class=eventimg src="img/con1.jpg"></a>
		<a href="#"><img class=eventimg src="img/con2.jpg"></a>
		<a href="#"><img class=eventimg src="img/con3.jpg"></a>
		<br>
		<a href="#"><img class=eventimg src="img/con4.jpg"></a>
		<a href="#"><img class=eventimg src="img/con5.jpg"></a>
		<a href="#"><img class=eventimg src="img/con6.jpg"></a>
		
		</div>
		<a href="#"><img class=eventimglar src="img/conlar.jpg"></a>
	</div>
	<%@ include file="footer.jsp" %>
	
 </body>
</html>
