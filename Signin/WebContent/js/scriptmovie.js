
 var adultfee=0;
 var teenfee=0;
 var adultservicefee=0;
 var teenservicefee=0;
 var totalfee=0;
	$(function(){
		$("#accordian h3").click(function(){
			$("#accordian ul ul").slideUp();
			if(!$(this).next().is(":visible"))
			{
				$(this).next().slideDown();
			}
		})
	})

	$(function(){
		$("#accordian ul ul li a").click(function(){
			$(this).css("background","red");
			$("#accordian ul ul li a").not($(this)).css("background","#333333");
			var ttr=$(this).html();
			$('#resultsite').html(ttr);
			var si_sponsor = ttr.split(" ");
			
			$.ajax({
		  		  type:"post",
						url:"B_movie_json.jsp",
						datatype:"json",
						data:{
						"si" : si_sponsor[0],
						"sponsor":si_sponsor[1],
						"command":"getmovie"
					},
					
					success:nowboard,
		  		 
		  		  
		  	  });function nowboard(resdata){
		  		  
		  		 var obj = $.parseJSON(resdata);
				 	var html="";
				 	html+="<div id = movietwrap>"
				 	for(var i=0;i<obj.length;i++){
				 		if(html.indexOf(obj[i].movie)==-1){
				 	html+="<div class =moviet >"+obj[i].movie+"</div>"
				 		}
					}
				 	html+="</div>"
				 	$("#accordian2").html(html)
				 	$('#resulttime').html('미선택');
					$('#resultyear').html('미선택');
					$('#resultmovie').html('미선택');
					
					$('#resultmonth').html('');
					$('#resultday').html('');
					$('.hyphoon').css('display','none');
					
					$('.moinfotime').html("<div style=\"padding-top:35%;\">날짜를 먼저 선택해주세요</div>	")
					$('#moinfo').html("<div id=\"kCalendar\"><span id=readycal>영화를 먼저 선택해주세요</span></div>	")
					$('#poster').attr('src','img/none.png');
		  	  }
		})
	})
	//영화선택>>날짜선택
	$(function getday(){
		$(document).on('click','#movietwrap div',function (){
			$(this).css("background","red");
			$("#movietwrap div").not($(this)).css("background","#333333");
			var ttr=$(this).html();
			$('#resultmovie').html(ttr);
			
			var nowcinema = $('#resultsite').html();
			var si_sponsor = nowcinema.split(" ");
			var nowmovie = $('#resultmovie').html();
			var command="getdate";
			
			 $.ajax({
       		  type:"post",
     				url:"getdate.json",
     				datatype:"json",
     				data:{
     					"si" : si_sponsor[0],
						"sponsor":si_sponsor[1],
						"movie":nowmovie,
						"command":command
     			},
     			
     			success:getdate
       		 
       		  
       	  });function getdate(data, textStatus, xhr){
       	
       		 var obj = $.parseJSON(JSON.stringify(data));
 
       		 $.each(data, function(key, val){

             console.log('key:' + textStatus);
       		 });	
		
			kCaledar (obj)
			$('#poster').attr("src",obj[obj.length-1].poster);
			$('#resulttime').html('미선택');
			$('#resultyear').html('미선택');
			$('#resultmonth').html('');
			$('#resultday').html('');
			$('.hyphoon').css('display','none');
			
			$('.moinfotime').html("<div style=\"padding-top:35%;\">날짜를 먼저 선택해주세요</div>	")
			
       	  }
		
	})
	
	
	function kCaledar (obj) {
			kCalendar('kCalendar',obj);
		};

	$(function(){
		$(".moinfo1 li:nth-child(n+3)").click(function(){
			$(this).css("background","red");
			$(".moinfo1 li:nth-child(n+3)").not($(this)).css("background","#f9f7f8");
			$(this).css("color","white");
			$(".moinfo1 li:nth-child(n+3)").not($(this)).css("color","black");
			var ttr=$(this).html();
			$('#resultadult').html(ttr);
			adultfee=8000*ttr;
			moviefee=adultfee+teenfee;
			adultservicefee=500*ttr;
			servicefee=teenservicefee+adultservicefee;
			totalfee=moviefee+servicefee;
			$('#moviefee').html(moviefee+" 원");
			$('#servicefee').html(servicefee+" 원");
			$('#totalfee').html(totalfee+" 원");
		})
	})
	$(function(){
		$(".moinfo2 li:nth-child(n+3)").click(function(){
			$(this).css("background","red");
			$(".moinfo2 li:nth-child(n+3)").not($(this)).css("background","#f9f7f8");
			$(this).css("color","white");
			$(".moinfo2 li:nth-child(n+3)").not($(this)).css("color","black");
			var ttr=$(this).html();
			$('#resultteen').html(ttr);
			teenfee=6000*ttr;
			moviefee=adultfee+teenfee;
			teenservicefee=500*ttr;
			servicefee=teenservicefee+adultservicefee;
			totalfee=moviefee+servicefee;
			$('#moviefee').html(moviefee+" 원");
			$('#servicefee').html(servicefee+" 원");
			$('#totalfee').html(totalfee+" 원");
		})
	})
	$(function(){
		$(document).on('click','.timetable',function(){
			$(this).css("background","red");
			$(".timetable").not($(this)).css("background","#333333");
			var ttr=$(this).html();
			$('#resulttime').html(ttr);
		})
	})
});
