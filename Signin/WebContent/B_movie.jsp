<%@ page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page import="Dto.ScheduleVo"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="mybatmodel.action1" %>
<%@ page import="java.util.List" %>
<%@ page import="Dto.CinemaVo" %>
<%@ page import="java.util.Optional" %>

<%
	String which = request.getParameter("which");
	Optional<String> titlecheck = Optional.ofNullable(request.getParameter("title"));	
	String title = titlecheck.orElse("none");
	action1 act = new action1();
	List<CinemaVo> li =null;
	List<ScheduleVo> li2 =null;
	if(which.equals("cinema")){
	li =act.Cinemalist();
	}else if (which.equals("movie")){
	li2 = act.movielist();
	}
	String url = "location.href ='B_movie.jsp?which="+which+"'";
	System.out.println(title);
	%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Document</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link href="css/style.css?ver=1" rel="stylesheet">
	<link href="css/cssmovie.css?ver=4" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

	<script src="js/script.js?ver=5"></script>
	<script language="JavaScript" src="js/scriptmovie.js?ver=9" charset="UTF-8"></script>

 </head>
 <style>
 	.hyphoon{
 	display:none;
 	}
 	.moviet{
 	padding: 5px 10px 5px 10px;
 	margin: 5px 0 5px 0;
 	
 	}
 	#movietwrap{
 	vertical-align: middle;
 	display: table-cell; 
 	text-align:left;
 	
 	}
 	#readycal{
 	color:white;
 	position:relative;
 	top:50%;
 	}
 	
 	#notavailable{
 	opacity:0.3;
 	}
 	#available{
 	opacity:1;
 	font-weight:bold;
 	}
 	.timetable{
 	padding: 5px 10px 5px 10px;
 	margin: 5px 0 5px 0;
 	}
 </style>
 <script>
	$(function() {
		$(document).on('click','#available',function(){
			var nullch = $(this).html()

			if(nullch==" "){
				
			}else{
			$(this).css("background","red");
			
			$('#kCalendar table tbody tr td').not($(this)).css("background","#333333");
			
			var date = $('#date').html() 
			var year = date.substr(0,4)
			var month = date.substr(6,2)
			var day= $(this).html()
			if(day<10){
				day="0"+day
			}
			
			
			$('#resultday').html(day)
			$('#resultyear').html(year)
			$('#resultmonth').html(month)
			$('.hyphoon').css('display','inline-block')
			
			var nowcinema = $('#resultsite').html()
			var si_sponsor = nowcinema.split(" ")
			var nowmovie = $('#resultmovie').html()
			var date = year+"-"+month+"-"+day
			var command="gettime"
			
			$.ajax({
		  		  type:"post",
						url:"getschedule.json",
						datatype:"json",
						data:{
						"si" : si_sponsor[0],
						"sponsor":si_sponsor[1],
						"movie":nowmovie,
						"date":date,
						"command":command
					},
					
					success:nowboard,
		  		 
		  		  
		  	  });function nowboard(resdata){
		  		  var json = $.parseJSON(JSON.stringify(resdata));
		  		
		  		var cinelist = json[0].cine.split('/')
		  		var schedule_by_cine = json[0].schedule.split('/')
		  		var s_html="";
		  		for(var k= 0;k<cinelist.length-1;k++){
		  			var schedule_by_time =  schedule_by_cine[k].split('#')
			  		for (var i= 0;i<schedule_by_time.length-1;i++){
			  			s_html += "<div class = timetable>"+cinelist[k]+"관 "+schedule_by_time[i]+"</div>"
			  			
			  		}
		  		}
		  		$(".moinfotime").html(s_html)
		  	  }
	
			
			}
		})
	})
	
	
	function send(){
		var resultmovie =  $('#resultmovie').html()
		var resultsite =  $('#resultsite').html()
		var resultday = $('#resultyear').html()+$('#resultmonth').html()+ $('#resultday').html()
		var resulttime =  $('#resulttime').html()
		var resultadult =  $('#resultadult').html()
		var resultteen =  $('#resultteen').html()
		var totalfee = $('#totalfee').html()
		
		if(resultmovie=='미선택'||resultsite=='미선택'||resultday=='미선택'||resulttime=='미선택'||(resultadult=='0'&&resultteen=='0')){
			alert("선택하지 않은 항목이 있습니다")
			
		}else
		location.href ='B_bookingseat.jsp?resultmovie='+resultmovie+'&resultsite='+resultsite+'&resultday='+resultday+'&resulttime='+resulttime+'&resultadult='+resultadult+'&resultteen='+resultteen+'&totalfee='+totalfee
		
		
	}
	<%if(title!="none"){ %>
	window.onload=function(){
		autochoose();
	};
	function autochoose(){

		$('div[name="<%=title%>"]').css("background","red");
		var ttr=$('div[name="<%=title%>"]').html();
		$('#resultmovie').html(ttr);
		
		var nowcinema = $('#resultsite').html();
		var si_sponsor = nowcinema.split(" ");
		var nowmovie = $('#resultmovie').html();
		var command="getcine";
		
		 $.ajax({
   		  type:"post",
 				url:"getdate.json",
 				datatype:"json",
 				data:{
					"movie":nowmovie,
					"command":command
 			},
 			
 			success:getcine
   		 
   		  
   	  });function getcine(data, textStatus, xhr){

   		 var li = $.parseJSON(JSON.stringify(data));
   		  var html ="";

   html+="		<ul>"
   html+="			<li>"
   html+="		<h3><span class=\"icon-dashboard\"></span>서울/경기</h3>"
   html+="				<ul>"
	  
	   for(var i= 0;i<li.length;i++){ 
				if(li[i].doo=='서울'||li[i].doo=='경기'){
				
			 html+=	"<li><a>"+li[i].si+" "+li[i].sponsor+"</a></li>"
				
				}
			}

   
 
	
   html+="				</ul>"
   html+="		</li>"
   html+="	<li>"
   html+="<h3><span class=\"icon-tasks\"></span>충청/강원</h3>"
   html+="		<ul>"
	   
	   for(var i= 0;i<li.length;i++){ 
			if(li[i].doo=='충청'||li[i].doo=='강원'){
			
		 html+=	"<li><a>"+li[i].si+" "+li[i].sponsor+"</a></li>"
			
			}
		}
   html+="				</ul>"
   html+="		</li>"
   html+="	<li>"
   html+="  <h3><span class=\"icon-calendar\"></span>전라/경상</h3>"
   html+="		<ul>"
		   
		   for(var i= 0;i<li.length;i++){ 
				if(li[i].doo=='전라'||li[i].doo=='경상'){
				
			 html+=	"<li><a>"+li[i].si+" "+li[i].sponsor+"</a></li>"
				
				}
			}
   html+="				</ul>"
   html+="		</li>"
   html+="	<li>"
   html+="  <h3><span class=\"icon-heart\"></span>제주</h3>"
   html+="		<ul>"
		   
		   for(var i= 0;i<li.length;i++){ 
				if(li[i].doo=='제주'){
				
			 html+=	"<li><a>"+li[i].si+" "+li[i].sponsor+"</a></li>"
				
				}
			}
   html+="				</ul>"
   html+="		</li>"
   html+="</ul>"


		$('#accordian2').html(html);
		$('#poster').attr("src",li[li.length-1].poster);
		$('#resulttime').html('미선택');
		$('#resultyear').html('미선택');
		$('#resultmonth').html('');
		$('#resultday').html('');
		$('.hyphoon').css('display','none');
		
		$('.moinfotime').html("<div style=\"padding-top:35%;\">날짜를 먼저 선택해주세요</div>	")
		
   	  }

		
		
	}
	
	
	<%}%>
	</script>
 
 <body>
 	<%@ include file="header.jsp" %>
	<div id =mainwrapper>
		<div id =bookingbox>
			<div id =bookingfirst>
			<%if(which.equals("cinema")){ %>
				<div class=booktitle>극장선택</div>
				<div id="accordian">				
						<ul>
							<li>
								<h3><span class="icon-dashboard"></span>서울/경기</h3>
								<ul>
									<%for(int i= 0;i<li.size();i++){ 
										if(li.get(i).getDoo().equals("서울")||li.get(i).getDoo().equals("경기")){
									%>
									<li><a><%=li.get(i).getSi() %> <%=li.get(i).getSponsor() %></a></li>
									
									<%}} %>
									
						
								</ul>
							</li>
							<li class="active">
								<h3><span class="icon-tasks"></span>충청/강원</h3>
								<ul>
									<%for(int i= 0;i<li.size();i++){ 
										if(li.get(i).getDoo().equals("충청")||li.get(i).getDoo().equals("강원")){
									%>
									<li><a><%=li.get(i).getSi() %> <%=li.get(i).getSponsor() %></a></li>
									
									<%}} %>
								</ul>
							</li>
							<li>
								<h3><span class="icon-calendar"></span>전라/경상</h3>
								<ul>
									<%for(int i= 0;i<li.size();i++){ 
										if(li.get(i).getDoo().equals("전라")||li.get(i).getDoo().equals("경상")){
									%>
									<li><a><%=li.get(i).getSi() %> <%=li.get(i).getSponsor() %></a></li>
									
									<%}} %>
								</ul>
							</li>
							<li>
								<h3><span class="icon-heart"></span>제주</h3>
								<ul>
									<%for(int i= 0;i<li.size();i++){ 
										if(li.get(i).getDoo().equals("제주")){
									%>
									<li><a><%=li.get(i).getSi() %> <%=li.get(i).getSponsor() %></a></li>
									
									<%}} %>
								</ul>
							</li>
						</ul>
					
					</div>
			
			
			<%} else if(which.equals("movie")){ %>
				<div class=booktitle>영화선택</div>
					<div id="accordian">
					<div id = movietwrap>
						<ul>
									<%for(int i= 0;i<li2.size();i++){ 
									%>
									<div id = moviefirst class =moviet name="<%=li2.get(i).getMovie() %>"><%=li2.get(i).getMovie() %></div>
									
									<%} %>
						</ul>
					</div>
					</div>
				
			<%}%>
			
			</div>
			
			<div id =bookingsecond>
			<%if(which.equals("cinema")){ %>
				<div class=booktitle>영화선택</div>
					<div id="accordian2">
						<div style="padding-top:50%;">장소를 먼저 선택해주세요</div>
					</div>
			</div>
			<% } else if(which.equals("movie")){ %>
				<div class=booktitle>극장선택</div>
					<div id="accordian2">
						<div style="padding-top:50%;">영화를 먼저 선택해주세요</div>
					</div>
					</div>
					<%}%>
			
				<div id = bookingday>
					<div class=booktitle>날짜선택</div>
					<div id=moinfo>
						<div id="kCalendar"><span id=readycal>영화를 먼저 선택해주세요</span></div>
					</div>
				</div>
				<div id = bookingday>
					<div class=booktitle>시간선택</div>
					<div class=moinfotime>
					
						<div style="padding-top:35%;">날짜를 먼저 선택해주세요</div>				
				
					</div>
				</div>
				<div id = bookingperson>
					<div class=booktitle>인원선택</div>
					<div class=moinfo>

						<ul class=moinfo1>
							<li>성인</li>
							<li>8000원</li>
							<li>0</li>
							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							<li>5</li>
							<li>6</li>
							<li>7</li>
						</ul>
						<ul class=moinfo2>
							<li>학생</li>
							<li>6000원</li>
							<li>0</li>
							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							<li>5</li>
							<li>6</li>
							<li>7</li>
						</ul>
					
						<hr color=white width=90% size=1px style="margin-top:55px;">
						<div style="color:#999999;font-size:11pt;margin-left:20px;margin-top:15px;">학생권은 학생증 필히 지참하셔야 입장가능합니다.</div>
					</div>
					
				</div>
				<div id = bookinginfo>
					<div class=booktitle>선택한영화정보
					</div>
					<div class=moinfocheck>
					<img id =poster src="img/none.png" style="width:120px;height:auto;float:left;margin-top:20px;margin-left:20px;border:1px solid white;"/>
						<ul>
							<li>영화</li>
							<li>극장</li>
							<li>날짜</li>
							<li>시간</li>
							<li>인원</li>
						</ul>
						<ul id=result>
							<li id = 'resultmovie'>미선택</li>
							<li id = 'resultsite'>미선택</li>
							<li id = 'resultdate'><span id = 'resultyear'>미선택</span><span class=hyphoon >-</span><span id='resultmonth'></span><span class=hyphoon >-</span><span id='resultday'></span></li>
							<li id = 'resulttime'>미선택</li>
							<li><span>성인 :</span><span id = 'resultadult'>0</span><span> 명</span></li>
							<li><span>학생 :</span><span id = 'resultteen'>0</span><span> 명</span></li>
						</ul>
					</div>
				</div>
				<div id = bookingfee>
					<div class=booktitle>요금 정보 확인</div>
					<div class=moinfofee>
						<ul>
							<li>영화 금액</li>
							<li>수수료(1인당 500원)</li>
						</ul>
						<ul style="float:right; margin-right:30px;">
							<li id=moviefee style="text-align:right;">0 원</li>
							<li id=servicefee style="text-align:right;">0 원</li>
						</ul>
						<hr width=90% style="clear:both;">
						<ul>
							<li>합계</li>
						</ul>
						<ul style="float:right; margin-right:30px;">
							<li id=totalfee style="text-align:right; color:red; font-weight:bold;">0 원</li>
						</ul>
					</div>
				</div>
				<div OnClick="<%=url %>" style="margin-left:20px;cursor:pointer;width:150px;border-radius:10px;
				height:30px;color:white;background:orange;float:left;padding-top:10px;margin-top:30px; margin-bottom:30px;">다시 선택<hr  width=125% style="margin-top:20px;margin-left:-20px;color:#D5D5D5;"></div>
				<div OnClick='javascript:send()' style="margin-left:20px;cursor:pointer;width:150px;border-radius:10px;
				height:50px;color:white;background:#CC3D3D;float:left;padding-top:20px;">좌석선택하기</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
  
 </body>
</html>
