
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
		  	  }
		})
	})
	//영화선택>>날짜선택
	$(function(){
		$(document).on('click','#movietwrap div',function(){
			$(this).css("background","red");
			$("#movietwrap div").not($(this)).css("background","#333333");
			var ttr=$(this).html();
			$('#resultmovie').html(ttr);
			
			var nowcinema = $('#resultsite').html();
			var si_sponsor = nowcinema.split(" ");
			var nowmovie = $('#resultmovie').html();
			alert(nowmovie+si_sponsor[0]+si_sponsor[1])
	
			 $.ajax({
       		  type:"post",
     				url:"B_movie_json.jsp",
     				datatype:"json",
     				data:{
     					"si" : si_sponsor[0],
						"sponsor":si_sponsor[1],
						"movie":nowmovie,
						"command":"getdate"
     			},
     			
     			success:nowevent,
       		 
       		  
       	  });function nowevent(resdata){
       		 var obj = $.parseJSON(resdata);
       		 alert(resdata)
     		 	var html="";
     		 	var k=9;
     		 	for(var i=0;i<obj.length;i++){
 
     		
     
     		 	html+="</div>"
     				k++;
     				
     			
       	  }
			
		
			kCaledar ()
			
		}
	})
	
	
	function kCaledar () {
			kCalendar('kCalendar');
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
		$(".moinfotime ul li").click(function(){
			$(this).css("background","red");
			$(".moinfotime ul li").not($(this)).css("background","#333333");
			var ttr=$(this).html();
			$('#resulttime').html(ttr);
		})
	})
});
