		function idcheck(){
			var idsize = signupform.idinput.value.length

			if((idsize>=4) && (idsize<=16)){
				alert("사용가능한 아이디입니다.")
				}
				else{
				alert("아이디는 4~16글자까지 입력가능합니다")
				}
		}
		
			
		function signup(){
			var idsize = signupform.idinput.value.length
			var pwsize = signupform.pwinput1.value.length
			var pwval1 = signupform.pwinput1.value
			var pwval2 = signupform.pwinput2.value
			var pwhint = signupform.hint.options[0].selected
			var pwhintvalue 
			var pwhintans = signupform.hintanswer.value
			var name = signupform.name.value
			var adrnum = signupform.adr.value
			var adr1 = signupform.adr1.value
			var adr2 = signupform.adr2.value
			var gender = signupform.gender
			var gendervalue
			var email = signupform.email.value
			var mail = signupform.mail
			var mailvalue
			var birthyear = signupform.birthy
			var birthmonth = signupform.birthm
			var birthday =  signupform.birthd
			var yearvalue
			var monthvalue
			var dayvalue
			var phone1 =  signupform.phone1
			var phonevalue
			var phone2 =  signupform.phone2.value
			var phone3 =  signupform.phone3.value
			var uselang =""

			if((idsize>=4) && (idsize<=16)){	

				if ((pwsize>=4) && (pwsize<=16)){

					if(pwval1==pwval2){
						
						if(!pwhint){						
							
							if(!pwhintans==""){
									
									if(name!=""){
										
										if (adrnum!="" && adr1 !="" && adr2 !="")
										{
											for (var i= 0;i<gender.length ;i++ )
												{
													if (gender[i].checked==true)
													{
														gendervalue=gender[i].value
													}
												}
												if (email!="")
												{
													for (var i= 0;i<mail.length ;i++ )
													{
														if (mail[i].selected)
														{
															mailvalue=mail[i].value
														}
													}
													for (var i= 0;i<signupform.hint.length;i++ )
													{
														if (signupform.hint[i].selected)
														{
														pwhintvalue=signupform.hint[i].value
														}
													}
													for (var i= 0;i<birthyear.length ;i++ )
													{
														if (birthyear[i].selected)
														{
															yearvalue=birthyear[i].value
														}
													}
													for (var i= 0;i<birthmonth.length ;i++ )
													{
														if (birthmonth[i].selected)
														{
															monthvalue=birthmonth[i].value
														}
													}
													for (var i= 0;i<birthday.length ;i++ )
													{
														if (birthday[i].selected)
														{
															dayvalue=birthday[i].value
														}
													}
													for (var i= 0;i<phone1.length ;i++ )
													{
														if (phone1[i].selected)
														{
															phonevalue=phone1[i].value
														}
													}
													if (phone2!="" && phone3!="")
													{
														
														if (signupform.uselang1.checked)
														{
															uselang+=" "+signupform.uselang1.value
														}
														if (signupform.uselang2.checked)
														{
															uselang+=" "+signupform.uselang2.value
														}
														if (signupform.uselang3.checked)
														{
															uselang+=" "+signupform.uselang3.value
														}
														if (signupform.uselang4.checked)
														{
															uselang+=" "+signupform.uselang4.value
														}
														alert(	"회원가입을 축하합니다!\n"+
																"아이디: "+signupform.idinput.value+
																"\n비밀번호 : "+signupform.pwinput1.value+
																"\n비밀번호 찾기 질문 : "+pwhintvalue+
																"\n비밀번호 찾기 답 : "+pwhintans+
																"\n이름 : "+name+
																"\n우편번호 : ("+adrnum+") "+
																"\n주소 : "+adr1+" "+adr2+
																"\n성별 : "+gendervalue+
																"\n이메일 : "+email+"@"+mailvalue+
																"\n생년월일 : "+yearvalue+"년"+monthvalue+"월"+dayvalue+"일"+
																"\n전화번호 : "+phonevalue+"-"+phone2+"-"+phone3+
																"\n사용가능한언어 : "+uselang
																)
														
													}
													else{
														alert("전화번호를 제대로 입력하세요")
														}
														
												}
												else{
													alert("이메일을 입력하세요")
													}

										}
										else{
											alert("주소란을 전부 입력하세요")
											}

									}
									else{
										alert("이름을 입력하세요")
										}
	
								}
								else{
									alert("비밀번호확인 대답없음")
									}
								
							}
						else{
							alert("질문을선택하세요")
							}
		
					}
					else{
						alert("비번확인불합격")
						}

				}
				else{
					alert("비번사이즈불합격")
					}

			}
			else{
				alert("아이디불합격")
				}
		}
