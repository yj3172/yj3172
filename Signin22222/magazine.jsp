<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
 	body{
		width:1900px;
		margin: 0 auto;		
	}
  	header{
		position:fixed;
		left:0px;
		top:0px;
		width:100%;
		height:90px;
		background:white;
		color:;
		z-index:200;
	}
	nav{
		position:fixed;
		left:0px;
		top:90px;
		width:100%;
		height:60px;
		background:#374955;
		vertical-align:middle;
		z-index:200;
	}
	footer{
		position:relative;
		left:0px;
		width:100%;
		height:150px;
		background:#d0d0d0;
		font-family:"arlal";
		color:#999999;
	}
	a{
		color:white;
		text-decoration:none;
	}
	#headermenu{
		width:1000px;
		position:absolute;
		left:30%;		
	}
	#headermenuright{
		position:absolute;
		right:10%;
		top:20px;
	}
	#menulogo{
		position:absolute;
		left:47%;
		top:30px;
	}
	.menuleft{	
		display:inline-block;
		position:relative;
	}	
	.menuright{
		display:inline-block;
		position:relative;
		margin-left:10px;
		margin-right:10px;
	}
	.headermenu{
		
	}
	#menumovie{
	}
	#menutheater{
	}
	#menustore{
	}
	#menuevent{
	}
	#menumagazine{
	}
	#menulogin{
	}
	#menusignup{
	}
	#menumypage{
	}
	#mainwrapper{
		position:relative;
		z-index:1;
		width:1200px;
		height:4000px;
		margin-left:auto;
		margin-right:auto;
		background:#f4efd3;
		margin-top:150px;
		}
		ul{
		margin:0;
	}
	ul.headermenu li.menuleft ul.submenu {
		display:none;
		height:55px;
		padding:0px;
		margin:0px;
		border:0px;
		position:relative;
		width:600px;
		z-index:200;
		top:60px;
		left:-200px;
		text-align:center;
	}
	ul.headermenu li.menuleft ul.submenu li{
		float:left;
		padding-right:10px;
		padding-left:10px;
		z-index:200;
		padding-top:20px;
		padding-bottom:20px;	
	}
		ul.headermenu li.menuleft ul.submenu li a{
		color:black;	
	}
	ul.headermenu li.menuleft {
		background:#374955;
		padding-top:19.5px;
		padding-bottom:19.5px;
		width:100px;
		z-index:200;
		font-family: 'monospace';
		text-align:center;
		vertical-align:middle;
		
		
	}
	ul.headermenu li.menuleft:hover {
		background:#5c5757;
	}
	ul.headermenu li.menuleft:hover ul.submenu {
		position:absolute;
		
		display:block;
		
	}
	span a {
		color:red;
		font-size:30px;
		font-weight:bold;
	}
	li.menuright a{
		color:black;
	}
		
	ul.headermenu li.menuleft ul.submenu li:hover {
		background:#5c5757;
		
	}
	.menuleft li{
		
		list-style:none;
	}
	
	.maintitle{
		padding:20px 0;
		margin:0;
		color:red;
	}
	.submenu{
		text-align:center;
	}
	#footerleft{
		position:relative;
		left:300px;	
		top:10px;
		
	}
	#footerleft ul{
		float:left;
		margin-left:50px;
		
	}

	#footerleft ul li{
		padding:4px 0;
		font-size:9pt;
		list-style:none;
		
	}
	#footerright{
		position:relative;
		left:500px;	
		top:10px;
		
	}
	#footerright ul{
		float:left;
		margin-left:50px;
		
	}

	#footerright ul li{
		padding:1px 0;
		font-size:9pt;
		list-style:none;	
	}
	#footerright ul li:first-child{
		padding:2px 0;
		font-size:18pt;
		list-style:none;	
	}
	#footerright ul li:nth-child(2){
		padding:2px 0;
		font-size:18pt;
		list-style:none;	
	}
/*================================================기본================================================================*/
	

	 #sidebar{position:fixed; top:400px;left:100px;filter: drop-shadow(10px 10px 10px #000);}
	 #vertical ul{list-style:none;margin:0px; padding:0px; position:relative;}
	 #vertical ul a{text-decoration:none;display:block;width:150px;height:35px;line-height:35px;text-align:center;color:white;}
	 #vertical li{width:150px;background-color:#374955; }
	 #vertical ul li:hover{background-color:#84bfe1}
	 #vertical ul li li:hover{background-color:red}
	 #vertical ul ul{ display:none; position:absolute;left:150px;top:35px;}
	 #vertical ul li:hover > ul {display:block;}

	 #index{
	 z-index:999;
	 }
/*==========================기본===========================*/
	#sub_mainwrapper{
	position:absolute;
	width:1140px;
	margin:30px;
	height:3000px;
	background-color:orange;
	}
	#netizen{
	position:absolute;
	width:600px;
	font-size:12pt;
	height:20px;
	padding-top:50px;
	background-color:red;
	}
	#expert_search_box{
		position:absolute;
		width:800px;
		height:400px;
		background-color:white;
		top:75px;
		border-style:double;
		border-width:1px;
		box-shadow: 5px 5px 5px #000;
		}
	#expert_search_box_inbox{
	position:absolute;
	width:760px;
	height:360px;
	margin:20px;
	background-color:green;
	}
	#picture_position{
	position:absolute;
	filter: drop-shadow(5px 5px 5px #000);
	}
	#baekdusan_write{
	position:absolute;
	font-size:23pt;
	font-weight:bold;
	left:200px;
	}
	#infomation{
	position:absolute;
	left:200px;
	top:50px;
	font-size:15pt;
	}
	#inhr{
	position:absolute;
	background-color:black;
	width:530px;
	height:1px;
	top:150px;
	left:200px;

	}
	#bottom_box{
	position:absolute;
	width:760px;
	height:100px;
	background-color:yellow;
	bottom:0px;
	}
	#score{
	position:absolute;
	top:20px;
	font-size:15pt;
	}
	#movie_select{
	position:absolute;
	width:400px;
	height:30px;
	top:50px;
	border-radius:10px;
	}
 </style>
 <body>
 	<header>
	<span id = menulogo><a id=logo href="">GETFLEX</a></span>
	<div id =headermenuright>
	<ul>
		<li class = menuright><a href="">Login</a></li>
		<li class = menuright><a href="">Signup</a></li>
		<li class = menuright><a href="">Mypage</a></li>
	</ul>
	</div>	
	</header>
	<nav>
		<div id=headermenu>
	<ul class = headermenu>
		<li class = menuleft><a href="">예매</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="#">영화먼저검색</a></li>
			   <li><a href="#">날짜먼저검색</a></li>
			   <li><a href="#">극장먼저검색</a></li>
			   </div>
			</ul>
			</li>
		<li class = menuleft><a href="">영화</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="now_movie.jsp">현재상영작</a></li>
			   <li><a href="#">상영예정작</a></li>
			   <li><a href="#">무비파인더</a></li>
			   	</div>
			</ul>
			</li>
		<li class = menuleft><a href="">영화관</a>
		<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="#">서울/경기</a></li>
			   <li><a href="#">충청</a></li>
			   <li><a href="#">인천</a></li>
			   <li><a href="#">강원</a></li>
			   <li><a href="#">경북</a></li>
			   <li><a href="#">경남</a></li>
			   <li><a href="#">전남</a></li>
			   <li><a href="#">전북</a></li>
			   <li><a href="#">제주</a></li>
			   	</div>
			</ul>
			</li>
		<li class = menuleft><a href="store.jsp">스토어</a></li>
		<li class = menuleft><a href="event.jsp">이벤트</a></li>
		<li class = menuleft><a href="magazine.jsp">영화매거진</a></li>
	</ul>
	</div>
	</nav>
	<div id ="mainwrapper">
		<div id="sub_mainwrapper">
		<div id="netizen">
			네티즌-관람객 평점
		</div>
		<div id="expert_search_box">
			<div id="expert_search_box_inbox">
					<div id="picture_position">
						<a href="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EA%B2%A8%EC%9A%B8%EC%99%95%EA%B5%AD2">
						<img src="image/baekdusan.jpg" height="230px" width="180px" id="pic1" alt="백두산포스터"></a>
					</div>
					<div id="baekdusan_write">
						백두산
					</div><!--윈터2끝-->
					<table id="infomation">
						<tr>
							<td>기본정보&nbsp;&nbsp;&nbsp;</td>
							<td>코미디,범죄,드라마|</td>
							<td>94분|</td>
							<td>개봉 2020,01,02</td>
						</tr>
						<tr>
							<td>감독</td>
							<td>신해강</td>
						</tr>
						<tr>
							<td>출연</td>
							<td>김영호,김정팔</td>
						</tr>
					</table>
					<hr id="inhr"></hr>
					<span class="star-prototype">4.5</span> (4.5)
				<div id="bottom_box">
					<div id="score">
						현재상영작 평점보기
					</div><!--스코어끝-->
					<select id=movie_select size=1  onchange="window.open(value,'_self');" >
					<option>현재상영작</option>
					<option value="portsub2.html">백두산</option>
					<option value="www.daum.net">겨울왕국</option>
					<option name="select">쥬만지</option>
					<option name="select">감쪽같은 그녀</option>
					<option name="select">나를찾아줘</option>
					</select>
				</div>
			</div><!--서치박스 인박스끝-->
		</div><!--서치박스끝-->
		<div id="sidebar">
			 <div id="vertical">
					 <ul> 
						  <li><a href="#">전문가칼럼</a></li>
						  <li><a href="#">핫토픽</a>
						  <li><a href="#">현장사진</a>
						  <li><a href="#">네티즌평점</a></li>
						  <li><a href="#">시사회후기</a></li>
					</ul>
				</div>
			</div><!--사이드바끝-->
		</div><!--메인래퍼2끝-->
	</div><!--메인래퍼끝-->
	<footer>
	<div id =footerhead>
		<img src="img/logo.jpg" style="height:150px;width:auto;float:left;"/>
		<div id =footerleft>
		
		<ul>
			<li>서울 강남구 강남대로96길 16 그린컴퓨터 아카데미 206호</li>
			<li>호스팅 서비스사업자 : 겟플릭스(주)</li>
			<li>조원: 이기남 이용준 개인정보보호책임자 : 홍길동 getflex23needhelp@getflex.com</li>
			<li>사업자등록번호 : 123-45-6789 통신판매업신고 : 제 2019-00001호 </li>
			<li>Copyright ⓒ ??? Corp. All Rights Reserved</li>
			</ul>
		</div>
		<div id=footerright>
			<ul>
				<li>고객센터</li>
				<li>1588-5959</li>
				<li>이메일문의</li>
				<li>yj3172@naver.com</li>  
				<li>lgn2000@naver.com</li>
			</ul>
		</div>
	</footer> 
 </body>
</html>
