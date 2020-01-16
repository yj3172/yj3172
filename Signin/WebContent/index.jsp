<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!doctype html>
<html lang="en">
<header>
</header>
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
	.bx-wrapper .bx-pager {
	position:absolute;
	top:805px;
	}
	#rankingbox{
	float:left;
	width:300px;
	height:500px;
	}
	</style>
<script>
var today = new Date();
var dd = today.getDate()-1;
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
if(dd<10) {
    dd='0'+dd
} 

if(mm<10) {
    mm='0'+mm
} 

today = yyyy+mm+dd;

	$.ajax({
	
		type:"GET",
		url:"http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?",
		data:{targetDt:today,key:"9c54a229f03f55f7f29e381b3eb14177",itemPerPage:"10"}
	}).done(function(msg){
		console.log(msg);
	    for(i = 0;i<5;i++){
	    	var title = "title"+i;
	    	var openday = "openday"+i;
	    	var totalperson = "totalperson"+i;
		document.getElementById(title).innerHTML =msg.boxOfficeResult.dailyBoxOfficeList[i].movieNm;
		document.getElementById(openday).innerHTML =msg.boxOfficeResult.dailyBoxOfficeList[i].openDt;
		document.getElementById(totalperson).innerHTML =msg.boxOfficeResult.dailyBoxOfficeList[i].audiAcc;
	    }
	});
	$.ajax({
		type:"GET",
		url:"https://openapi.naver.com/v1/search/movie.json?",
		data:{query:"닥터두리틀"},
		headers : {"Client Id" : "u6K2kBDy180EDXXdml56", "Client Secret" : "aMrE8TymR8"}
	}).done(function(msg){
		console.log(msg);
	});

</script>

  
 </head>
 <body>
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
		<% for(int i = 0;i<5;i++){
			String rank = i+1+"위";
			String title = "title"+i;
	    	String openday = "openday"+i;
	    	String totalperson = "totalperson"+i;
		%>
		<div id =rankingbox>
		<%=rank %>
		<div id =<%=title %>></div>
		<div id =<%=openday %>></div>
		<div id =<%=totalperson %>></div>
		
		</div>
		<%
		}
		%>
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
