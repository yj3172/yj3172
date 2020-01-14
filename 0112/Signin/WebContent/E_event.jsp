<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
 <head>
 <link rel="stylesheet" href="top_button.css">
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
		height:1200px;
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
	#mainwrapper2{
	position:relative;
	z-index:1;
	width:1200px;
	height:150px;
	margin-left:auto;
	margin-right:auto;
	background:orange;
	}
	
	.event_box_write{
	position:absolute;
	background:green;
	width:300px;
	height:100px;
	font-size:30pt;
	font-weight:bold;
	top:20px;
	}
	.event_box_button{
	position:absolute;
	width:300px;
	height:100px;
	top:20px;
	right:0px;
	}

	.event_box_button_button1{
	position:absolute;

	width:150px;
	height:100px;
	left:0px;
	padding-left:28px;
	padding-top:40px;
	}

	.event_box_button_button2{
	position:absolute;
	width:150px;
	height:100px;
	right:0px;
	padding-top:40px;
	}

	.event_hr{
	position:absolute;
	width:1200px;
	height:3px;
	background-color:red;
	top:120px;
	}
	#mainwrapper3{
	position:relative;
	width:1200px;
	height:600px;
	margin-left:auto;
	margin-right:auto;
	background:yellow;
	}
	.mainwrapper3_box{
	position:relative;
	width:350px;
	height:400px;
	background:green;
	top:50px;
	left:50px;
	}
	.mainwrapper3_box_picture{
	position:relative;
	width:350px;
	height:300px;
	background-color:red;
	}
	.mainwrapper3_box_write{
	position:relative;
	width:350px;
	height:100px;
	background-color:red;
	}
	.mainwrapper3_box_write_up{
	position:absolute;
	width:350px;
	height:30px;
	background-color:blue;
	margin-top:10px;
	font-size:15pt;
	color:white;
	}
	.mainwrapper3_box_write_center{
	position:absolute;
	width:350px;
	height:60px;
	background-color:green;
	margin-top:10px;
	font-size:10pt;
	top:30px;
	}



	#mainwrapper3 ul{
	list-style:none;
	margin-left:-100px;
	}

	#mainwrapper3 li{
	display:inline-block;
	margin-left:40px;
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
		<li class = menuleft><a href="">영화매거진</a></li>
	</ul>
	</div>
	</nav>
	<div id =mainwrapper>
		<div id =mainwrapper2>
			<div class="event_box_write">EVENT</div>	
			<span class="event_box_button">
				<div class="event_box_button_button1"> 
					<button type="button" class="btn btn-danger">당첨자발표</button>
				</div>
				<div class="event_box_button_button2">
					<button type="button" class="btn btn-warning">종료된 이벤트</button>
				</div>	
			</span>
			<hr class="event_hr">
		</div><!--mainwrapper2끝-->
		<div id="mainwrapper3">
			<ul>
				<li>
					<div class="mainwrapper3_box">
						<div class="mainwrapper3_box_picture">
							<img src="image/banner_1.jpg" width="350px" height="300px">
						</div>
						<div class="mainwrapper3_box_write">
							<div class="mainwrapper3_box_write_up">
								스페셜이벤트
							</div>
							<div class="mainwrapper3_box_write_center">
								[cgv송파]spherex관 신규오픈!<br>
								기간:2019.12.24~2020.01.12
							</div>
						</div>		
					</div>
				</li>
				<li>
					<div class="mainwrapper3_box">
						<div class="mainwrapper3_box_picture">
							<img src="image/banner_1.jpg" width="350px" height="300px">
						</div>
						<div class="mainwrapper3_box_write">
							<div class="mainwrapper3_box_write_up">
								스페셜이벤트
							</div>
							<div class="mainwrapper3_box_write_center">
								[cgv송파]spherex관 신규오픈!<br>
								기간:2019.12.24~2020.01.12
							</div>
						</div>		
					</div>
				</li>
				<li>
					<div class="mainwrapper3_box">
						<div class="mainwrapper3_box_picture">
							<img src="image/banner_1.jpg" width="350px" height="300px">
						</div>
						<div class="mainwrapper3_box_write">
							<div class="mainwrapper3_box_write_up">
								스페셜이벤트
							</div>
							<div class="mainwrapper3_box_write_center">
								[cgv송파]spherex관 신규오픈!<br>
								기간:2019.12.24~2020.01.12
							</div>
						</div>		
					</div>
				</li>
			<ul>
		</div><!--mainwrapper3끝-->
	</div><!--mainwrapper끝-->
	

















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
