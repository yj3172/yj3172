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
		height:400px;
		margin-left:auto;
		margin-right:auto;
		background:green;
		margin-top:150px;
		}
		ul{
		margin:0;
	}
	#mainwrapper2{
	position:relative;
	z-index:1;
	width:1200px;
	height:55px;
	margin-left:auto;
	margin-right:auto;
	background:orange;
	padding-top:200px;
	}
	#mainwrapper3{
	position:relative;
	width:100%;
	height:600px;
	margin-left:auto;
	margin-right:auto;
	background:#f3ebea;
	}
	#mainwrapper_wrapper4{
		position:relative;
		width:1200px;
		height:600px;
		margin-left:auto;
		margin-right:auto;
		background:yellow;
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
	#menubar{
	width:100%;
	height:50px;
	background-color:blue;
	}

#menubar ul{
list-style:none;
margin-left:270px;
padding-top:15px;
font-size:12pt;
font-weight:bold;
}
#menubar li{
display:inline;
margin-left:45px;
}
#mainwrapper2_best{
font-weight:bold;
font-size:25pt;
}
#mainwrapper2_suntek{
color:gray;
font-size:15pt;
}
#mainwrapper2 hr{
width:100%;
background-color:gray;
}
#best_suntek_write_box{
position:absolute;
width:400px;
height:150px;
background-color:gray;
left:400px;
top:20px;
text-align:center;
}

#best_suntek_write_present_write{
font-size:20pt;
font-weight:bo;
}

#mainwrapper3_picture1{
position:absolute;
width:200px;
height:300px;
background-color:red;
top:250px;
left:100px;
}
#mainwrapper3_picture2{
position:absolute;
width:200px;
height:300px;
background-color:orange;
top:250px;
left:500px;
}
#mainwrapper3_picture3{
position:absolute;
width:200px;
height:300px;
background-color:blue;
top:250px;
left:900px;
}

#mainwrapper2_1{
position:relative;
width:1200px;
height:500px;
background-color:blue;
margin-left:auto;
margin-right:auto;
}
#mainwrapper2_1_left{
position:relative;
width:300px;
height:350px;
background-color:red;
left:50px;
top:125px;
}
#mainwrapper2_1_center{
position:absolute;
width:300px;
height:350px;
background-color:purple;
left:450px;
top:125px;
}
#mainwrapper2_1_right{
position:absolute;
width:300px;
height:350px;
background-color:purple;
right:50px;
top:125px;
}
#mainwrapper_wrapper5{
position:relative;
width:1200px;
height:3600px;
margin-left:auto;
margin-right:auto;
background:orange;
}

#mainwrapper_wrapper5_1{
background-color:red;
width:1200px;
height:600px;
}
#mainwrapper_wrapper5_1_package{
font-size:25pt;
font-weight:bold;
}
#mainwrapper_wrapper5_1_package_{
background-color:blue;
width:1200px;
height:2px;
}
.mainwrapper_wrapper5_1_package_picture1{
position:relative;
width:300px;
height:400px;
background-color:yellow;
left:100px;
top:60px;
}
.mainwrapper_wrapper5_1_package_picture1_picture{
position:absolute;
width:300px;
height:250px;
}

.mainwrapper_wrapper5_1_package_picture1_write{
position:absolute;
width:300px;
height:150px;
background-color:purple;
top:250px;
}

.mainwrapper_wrapper5_1_package_picture1_writecontents{
position:absolute;
width:300px;
height:45px;
background-color:yellow;
font-weight:bold;
font-size:20pt;
text-align:center;
padding-top:5px;
}
.mainwrapper_wrapper5_1_package_picture1_writecontents2{
position:absolute;
width:300px;
height:60px;
background-color:green;
font-weight:bold;
font-size:15pt;
top:50px;
text-align:center;
}
.mainwrapper_wrapper5_1_package_picture1_writecontents3{
position:absolute;
width:300px;
height:40px;
background-color:orange;
font-weight:bold;
font-size:20pt;
bottom:0px;
text-align:center;
color:red;
}

.through{
text-decoration:line-through;
color:gray;
}

#ggub ul{
list-style:none;
margin-left:-195px;
}
#ggub li{
display:inline-block;
margin-left:100px;
}
#mainwrapper_wrapper6{
position:relative;
width:1200px;
height:620px;
margin-left:auto;
margin-right:auto;
background:green;
}
#mainwrapper_wrapper7{
position:relative;
width:1200px;
height:620px;
margin-left:auto;
margin-right:auto;
background:pink;
}
#mainwrapper_wrapper8{
position:relative;
width:1200px;
height:620px;
margin-left:auto;
margin-right:auto;
background:green;
}

#mainwrapper_wrapper9{
position:relative;
width:1200px;
height:620px;
margin-left:auto;
margin-right:auto;
background:navy;
}

.mainwrapper_wrapper6_section1{
position:absolute;
width:550px;
height:520px;
background:yellow;
top:50px;
}
.mainwrapper_wrapper6_section2{
position:absolute;
width:550px;
height:520px;
background:yellow;
top:50px;
right:0px;
}

.mainwrapper_wrapper6_section1_up{
position:absolute;
width:550px;
height:60px;
background-color:red;
}
.mainwrapper_wrapper6_section1_up_left{
position:absolute;
width:270px;
height:60px;
background-color:blue;
font-size:25pt;
font-weight:bold;
}
.mainwrapper_wrapper6_section1_up_right{
position:absolute;
width:270px;
height:60px;
background-color:blue;
right:0px;
}
.mainwrapper_wrapper6_section1_up_right img{
margin-top:25px;
margin-left:238px;
}
#hrhr{
position:relative;
width:548px;
background-color:purple;
height:2px;
top:57px;
}
.mainwrapper_wrapper6_section1_up_center{
position:absolute;
width:550px;
background-color:orange;
height:450px;
top:70px;
}
.mainwrapper_wrapper6_section1_up_center ul{
list-style:none;
margin-left:-58px;
}
.mainwrapper_wrapper6_section1_up_center li{
display:inline-block;
margin-top:20px;
margin-left:20px;
}

.mainwrapper_wrapper6_section1_up_center_in_box{
background-color:purple;
position:relative;
width:500px;
height:140px;
margin-top:-13px;
}
.mainwrapper_wrapper6_section1_up_center_picture{
position:relative;
width:180px;
height:100px;
left:20px;
top:20px;
background-color:green;
}
.mainwrapper_wrapper6_section1_up_center_picture img{
position:relative;
margin-top:20px;
margin-left:30px;
height:60px;
width:120px;
}

.mainwrapper_wrapper6_section1_up_center_write{
position:absolute;
width:200px;
height:120px;
background:yellow;
top:10px;
right:80px;
}
.mainwrapper_wrapper6_section1_up_center_write_up{
position:absolute;
font-size:16pt;
font-weight:bold;
}
.mainwrapper_wrapper6_section1_up_center_write_center{
position:absolute;
color:gray;
margin-top:10px;
}

.mainwrapper_wrapper6_section1_up_center_write_bottom{
position:absolute;
margin-top:30px;
font-weight:bold;
}

.last_picture{
position:relative;
background-color:red;
width:1200px;
height:300px;
top:100px;
}
.last_picture img{
position:absolute;
width:1200px;
height:300px;
}


	#sidebar{position:fixed; top:250px;left:100px;filter: drop-shadow(10px 10px 10px #000); z-index:9999;}
	#vertical ul{list-style:none;margin:0px; padding:0px; position:relative; }
	#vertical ul a{text-decoration:none;display:block;width:120px;height:35px;line-height:35px;text-align:center;color:white; padding:15px;}
	#vertical li{width:150px;background-color:#374955; z-index:1000;border-radius:10%;}
	#vertical ul li:hover{background-color:#84bfe1}


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
	<div id =mainwrapper><img src="image\now_bottom_banner2.jpg" height="400px;" width="1200px"></div>
<!--	<div id="menubar">
		<ul>
			<li><a href="#">패키지</a></li>
			<li><a href="#">영화관람권</a></li>
			<li><a href="#">기프트카드</a></li>
			<li><a href="#">콤보</a></li>
			<li><a href="#">팝콘</a></li>
			<li><a href="#">음료</a></li>
			<li><a href="#">스낵</a></li>
			<li><a href="#">플레이존</a></li>
			<li><a href="#">상품권소개</a></li>
			<li style="color:white">|</li>
			<li><a href="#">내 기프트콘</a></li>
			<li><a href="#">장바구니</a></li>
		</ul>
	</div>-->
	<div id =mainwrapper2>
		<div id="mainwrapper2_best">
		베스트상품&nbsp<span id="mainwrapper2_suntek">선택이고민스럽다면?</span>
		</div><hr/>
	</div>
	<div id =mainwrapper2_1>
		<div id="mainwrapper2_1_left"></div>
		<div id="mainwrapper2_1_center"></div>
		<div id="mainwrapper2_1_right"></div>
	</div>
	<div id =mainwrapper3>
		<div id =mainwrapper_wrapper4>
			<div id="best_suntek_write_box">
				<h4>getflex special</h4>
				<h3><span style="font-size:20pt">선물추천</h3></span>
				getflex만의 특별한 사랑을 선물해보세요.
			</div>
			<div id="mainwrapper3_picture1">
			</div>
			<div id="mainwrapper3_picture2">
			</div>
			<div id="mainwrapper3_picture3">
			</div>
		</div><!--메인래퍼4끝-->
	</div><!--메인래퍼3끝-->
	<div id="mainwrapper_wrapper5">
		<div id="mainwrapper_wrapper5_1">
			<div id="mainwrapper_wrapper5_1_package">
				패키지
			</div><hr id="mainwrapper_wrapper5_1_package_hr">		
			<div id="ggub">
				<ul>
					<li>
						<div class="mainwrapper_wrapper5_1_package_picture1">
							<div class="mainwrapper_wrapper5_1_package_picture1_picture">
								<img src="image\popcorn.png" width="300px" height="250px">
							</div>
							<div class="mainwrapper_wrapper5_1_package_picture1_write">
								 <div class="mainwrapper_wrapper5_1_package_picture1_writecontents">
									cgv패키지
								 </div>
								 <div class="mainwrapper_wrapper5_1_package_picture1_writecontents2">
									데이트 고민은 그만 <br>getflex패키지가 정답!!
								 </div>
								 <div class="mainwrapper_wrapper5_1_package_picture1_writecontents3">25,000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="through">28500</span>
								 </div>
							</div>	
						</div><!--메인래퍼5-1 픽쳐1끝-->
					</li>
					<li>
						<div class="mainwrapper_wrapper5_1_package_picture1">
							<div class="mainwrapper_wrapper5_1_package_picture1_picture">
								<img src="image\popcorn.png" width="300px" height="250px">
							</div>
							<div class="mainwrapper_wrapper5_1_package_picture1_write">
								 <div class="mainwrapper_wrapper5_1_package_picture1_writecontents">
									cgv패키지
								 </div>
								 <div class="mainwrapper_wrapper5_1_package_picture1_writecontents2">
									데이트 고민은 그만 <br>getflex패키지가 정답!!
								 </div>
								 <div class="mainwrapper_wrapper5_1_package_picture1_writecontents3">25,000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="through">28500</span>
								 </div>
							</div>	
						</div><!--메인래퍼5-1 픽쳐1끝-->
					</li>
					<li>
						<div class="mainwrapper_wrapper5_1_package_picture1">
							<div class="mainwrapper_wrapper5_1_package_picture1_picture">
								<img src="image\popcorn.png" width="300px" height="250px">
							</div>
							<div class="mainwrapper_wrapper5_1_package_picture1_write">
								 <div class="mainwrapper_wrapper5_1_package_picture1_writecontents">
									cgv패키지
								 </div>
								 <div class="mainwrapper_wrapper5_1_package_picture1_writecontents2">
									데이트 고민은 그만 <br>getflex패키지가 정답!!
								 </div>
								 <div class="mainwrapper_wrapper5_1_package_picture1_writecontents3">25,000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="through">28500</span>
								 </div>
							</div>	
						</div><!--메인래퍼5-1 픽쳐1끝-->
					</li>
				</ul>
			</div>
		</div><!--메인래퍼5-1끝-->
		<div id="mainwrapper_wrapper6"><!--배경그린-->
			<div class="mainwrapper_wrapper6_section1"><!--배경그린안에 옐로우-->
				<div class="mainwrapper_wrapper6_section1_up"><!--배경그린안에 옐로우 안에 레드-->
					<div class="mainwrapper_wrapper6_section1_up_left"><!--배경그린안에 옐로우 안에 레드 안에 블루-->영화관람권</div>
					<div class="mainwrapper_wrapper6_section1_up_right"><!--배경그린안에 옐로우 안에 레드 안에 블루--><img src="image\more.png"></div>
				</div><hr id="hrhr">
				<div class="mainwrapper_wrapper6_section1_up_center">
					<ul>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
					</ul>
				</div><!--mainwrapper_wrapper6_section1_up_center 끝-->	
			</div><!--메인래퍼6 섹션1 끝-->
<!--=====================================================================================================================================================-->
			<div class="mainwrapper_wrapper6_section2">
				<div class="mainwrapper_wrapper6_section1_up"><!--배경그린안에 옐로우 안에 레드-->
					<div class="mainwrapper_wrapper6_section1_up_left"><!--배경그린안에 옐로우 안에 레드 안에 블루-->기프트카드</div>
					<div class="mainwrapper_wrapper6_section1_up_right"><!--배경그린안에 옐로우 안에 레드 안에 블루--><img src="image\more.png"></div>
				</div><hr id="hrhr">
				<div class="mainwrapper_wrapper6_section1_up_center">
					<ul>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--mainwrapper_wrapper6_section1_up_center_in_box 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--mainwrapper_wrapper6_section1_up_center_in_box 끝-->
						</li>
					</ul>
				</div><!--mainwrapper_wrapper6_section1_up_center 끝-->
			</div><!--mainwrapper_wrapper6_section2-->
		</div><!--메인래퍼6끝-->
		<div id="mainwrapper_wrapper7"><!--배경그린-->
			<div class="mainwrapper_wrapper6_section1"><!--배경그린안에 옐로우-->
				<div class="mainwrapper_wrapper6_section1_up"><!--배경그린안에 옐로우 안에 레드-->
					<div class="mainwrapper_wrapper6_section1_up_left"><!--배경그린안에 옐로우 안에 레드 안에 블루-->콤보</div>
					<div class="mainwrapper_wrapper6_section1_up_right"><!--배경그린안에 옐로우 안에 레드 안에 블루--><img src="image\more.png"></div>
				</div><hr id="hrhr">
				<div class="mainwrapper_wrapper6_section1_up_center">
					<ul>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
					</ul>
				</div><!--mainwrapper_wrapper6_section1_up_center 끝-->
			</div><!--메인래퍼6 섹션1 끝-->
<!--===============================================================================================================================-->
			<div class="mainwrapper_wrapper6_section2">
				<div class="mainwrapper_wrapper6_section1_up"><!--배경그린안에 옐로우 안에 레드-->
					<div class="mainwrapper_wrapper6_section1_up_left"><!--배경그린안에 옐로우 안에 레드 안에 블루-->팝콘</div>
					<div class="mainwrapper_wrapper6_section1_up_right"><!--배경그린안에 옐로우 안에 레드 안에 블루--><img src="image\more.png"></div>
				</div><hr id="hrhr"><!--mainwrapper_wrapper6_section1_up끝-->
				<div class="mainwrapper_wrapper6_section1_up_center">
					<ul>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--mainwrapper_wrapper6_section1_up_center_in_box 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--mainwrapper_wrapper6_section1_up_center_in_box 끝-->
						</li>
					</ul>
				</div><!--mainwrapper_wrapper6_section1_up_center 끝-->
			</div><!--mainwrapper_wrapper6_section2끝-->
		</div><!--메인래퍼7끝-->
		<div id="mainwrapper_wrapper8"><!--배경그린-->
			<div class="mainwrapper_wrapper6_section1"><!--배경그린안에 옐로우-->
				<div class="mainwrapper_wrapper6_section1_up"><!--배경그린안에 옐로우 안에 레드-->
					<div class="mainwrapper_wrapper6_section1_up_left"><!--배경그린안에 옐로우 안에 레드 안에 블루-->음료</div>
					<div class="mainwrapper_wrapper6_section1_up_right"><!--배경그린안에 옐로우 안에 레드 안에 블루--><img src="image\more.png"></div>
				</div><hr id="hrhr">
				<div class="mainwrapper_wrapper6_section1_up_center">
					<ul>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
					</ul>
				</div><!--mainwrapper_wrapper6_section1_up_center 끝-->
			</div><!--메인래퍼6 섹션1 끝-->
<!--===============================================================================================================================-->
			<div class="mainwrapper_wrapper6_section2">
				<div class="mainwrapper_wrapper6_section1_up"><!--배경그린안에 옐로우 안에 레드-->
					<div class="mainwrapper_wrapper6_section1_up_left"><!--배경그린안에 옐로우 안에 레드 안에 블루-->스낵</div>
					<div class="mainwrapper_wrapper6_section1_up_right"><!--배경그린안에 옐로우 안에 레드 안에 블루--><img src="image\more.png"></div>
				</div><hr id="hrhr"><!--mainwrapper_wrapper6_section1_up끝-->
				<div class="mainwrapper_wrapper6_section1_up_center">
					<ul>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--mainwrapper_wrapper6_section1_up_center_in_box 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--mainwrapper_wrapper6_section1_up_center_in_box 끝-->
						</li>
					</ul>
				</div><!--mainwrapper_wrapper6_section1_up_center 끝-->
			</div><!--mainwrapper_wrapper6_section2끝-->
		</div><!--메인래퍼8끝-->
		<div id="mainwrapper_wrapper9"><!--배경그린-->
			<div class="mainwrapper_wrapper6_section1"><!--배경그린안에 옐로우-->
				<div class="mainwrapper_wrapper6_section1_up"><!--배경그린안에 옐로우 안에 레드-->
					<div class="mainwrapper_wrapper6_section1_up_left"><!--배경그린안에 옐로우 안에 레드 안에 블루-->플레이존</div>
					<div class="mainwrapper_wrapper6_section1_up_right"><!--배경그린안에 옐로우 안에 레드 안에 블루--><img src="image\more.png"></div>
				</div><hr id="hrhr">
				<div class="mainwrapper_wrapper6_section1_up_center">
					<ul>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
					</ul>
				</div><!--mainwrapper_wrapper6_section1_up_center 끝-->
			</div><!--메인래퍼6 섹션1 끝-->
<!--===============================================================================================================================-->
			<div class="mainwrapper_wrapper6_section2">
				<div class="mainwrapper_wrapper6_section1_up"><!--배경그린안에 옐로우 안에 레드-->
					<div class="mainwrapper_wrapper6_section1_up_left"><!--배경그린안에 옐로우 안에 레드 안에 블루-->상품권소개</div>
					<div class="mainwrapper_wrapper6_section1_up_right"><!--배경그린안에 옐로우 안에 레드 안에 블루--><img src="image\more.png"></div>
				</div><hr id="hrhr"><!--mainwrapper_wrapper6_section1_up끝-->
				<div class="mainwrapper_wrapper6_section1_up_center">
					<ul>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--메인래퍼 섹션1 업 센터 인박스 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--mainwrapper_wrapper6_section1_up_center_in_box 끝-->
						</li>
						<li>
							<div class="mainwrapper_wrapper6_section1_up_center_in_box">
								<div class="mainwrapper_wrapper6_section1_up_center_picture"><img src="image\cgvticket.png"></div>
								<div class="mainwrapper_wrapper6_section1_up_center_write">
									<span class="mainwrapper_wrapper6_section1_up_center_write_up">getflex영화관람권</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_center">즐거운 경험은 getflex에서!</span><br>
									<span class="mainwrapper_wrapper6_section1_up_center_write_bottom">10,000원</span>
								</div>
							</div><!--mainwrapper_wrapper6_section1_up_center_in_box 끝-->
						</li>
					</ul>
				</div><!--mainwrapper_wrapper6_section1_up_center 끝-->
			</div><!--mainwrapper_wrapper6_section2끝-->
		</div><!--메인래퍼9끝-->
		<div class="last_picture"><img src="image\now_bottom_banner2.jpg"></div>
	</div><!--메인래퍼5끝(배경 오렌지)--> 


	<div id="sidebar">
		<div id="vertical">
			 <ul> 
				  <li><a href="#">패키지</a></li>
				  <li><a href="#">영화관람권</a></li>
				  <li><a href="#">기프트카드</a></li>
				  <li><a href="#">콤보</a></li>
				  <li><a href="#">팝콘</a></li>
				  <li><a href="#">음료</a></li>
				  <li><a href="#">스낵</a></li>
				  <li><a href="#">플레이존</a></li>
				  <li><a href="#">상품권소개</a></li>
			</ul>
		</div>
	</div><!--사이드바끝-->









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
