<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소켓 서버</title>
 
<style>
#chatwrap{
position:absolute;
top:400px;
left:1550px;
background:#333333;
padding: 30px;
color:white;
}
#chat_box {
    width: 300px;
    min-width: 200px;
    height: 700px;
    min-height: 200px;
    border: 1px solid black;
    background : white;
    
    overflow:auto;
  
}
#msg {
    width: 120px;
}
#msg_process {
    width: 90px;
}
.user{
background:yellow;
margin:10px 5px 0 5px;
color:black;
padding:5px;
border-radius: 15px;
display: block;
width:fit-content;
float:right;
clear:right;

}
</style>
</head>
<body>
<div id="chatwrap" >
 <h3>고객센터</h3>
 <h4>무엇이든 물어보세요</h4>
    <div id="chat_box"></div>
    <input type="text" id="msg">
    <button id="msg_process">전송</button>
 </div>
    <script src="http://localhost:82/socket.io/socket.io.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.js"></script>
    <script>
            $(document).ready(function(){
                var socket = io("http://localhost:82");
                
                //msg에서 키를 누를떄
                $("#msg").keydown(function(key){
                    //해당하는 키가 엔터키(13) 일떄
                    if(key.keyCode == 13){
                        //msg_process를 클릭해준다.
                        msg_process.click();
                    }
                });
                
                //msg_process를 클릭할 때
                $("#msg_process").click(function(){
                    //소켓에 send_msg라는 이벤트로 input에 #msg의 벨류를 담고 보내준다.
                     socket.emit("send_msg", $("#msg").val());
                    //#msg에 벨류값을 비워준다.
                    $("#msg").val("");
                });
                socket.on('send_msg', function(msg) {
                    //div 태그를 만들어 텍스트를 msg로 지정을 한뒤 #chat_box에 추가를 시켜준다.
                    $('<div class=user></div>').text(msg).appendTo("#chat_box");
                });
            });
        </script>
</body>
</html>
