<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <style>
        *{
            margin: 0; padding: 0;
        }
        
        body {
            display: flex;
            flex-direction: column;
        }
        
        header, footer {
            flex: none;
        }
        
        header{
            background-color: rgb(206, 207, 212);
            width: 100%;
            overflow: hidden;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }
       #header_button{
            margin: 10px;
            width:10%;
            height:80%;
            float: right;
        }

        main{
            text-align: center;                                  
            overflow-y: scroll;
            -webkit-overflow-scrolling: touch;
            flex: auto;
            padding-bottom: 50px;
            margin-bottom: 50px;
        }
        section{
            text-align: center;
            margin: 30px;
        }
        #com_img{
            float: left;
            width: 50%;
        }
        table{
            border: 1px solid #444444;
            border-radius: 25px;
            width: 100%;
            margin:auto;
            padding:0px;
        }
        tr{
            text-align: center;             
        }
        td{
            margin:0px;
            padding:0px;
        }

        progress{
            width:100%;
            
        }
        #bar2{
            display: flex;
        }
        #bar_text1, #bar_text2, #bar_text3, #bar_text4 {
            width:25%;
        }

        #request{
            text-align: left;
        }
       

        footer{
            background-color: rgb(206, 207, 212);
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            height: 8%;
            display: flex;
        }
        #footer_button{
            margin: auto;  
            width:100%;
            height:90%;
            text-align: center;
        }
        button{
            border-radius: 10px;
            width:100%;
            height:100%;
        }
        #foot{
            width:18%;
        }
    </style>
</head>
<body>
    <%
        String 업체_업체이름 = request.getParameter("업체_업체이름");
        
        int 거래내역_진행현황 = Integer.parseInt(request.getParameter("거래내역_진행현황"));
        String 거래내역_방문일자 = request.getParameter("거래내역_방문일자");

        String 거래내역_고객요청사항 = request.getParameter("거래내역_고객요청사항");

    %>
    <header>
        <div id="header_button">
            <button type="button" >버튼</button>
        </div>
    </header> 

    <main>
        <section>
            <table>
                <colgroup> 
                    <col style="width:60%">
                    <col style="width:40%">
                </colgroup>
                <tr>
                    <td rowspan="2"><img src="images/icon.png" alt="업체" id="com_img"></td>
                    <td>업체명</td> 
                </tr>
                <tr>
                    <td>방문시간</td>
                </tr>
            </table>
        </section>

        <section style="text-align: left;">
            <h1>진행상황</h1>
            <div id="bar">
                <progress id="progress" value="80" max="100"></progress>
            </div>
            <div id="bar2">
                <div id="bar_text1">
                    <p style="font-size: 90%;">접수중</p>
                </div>
                <div id="bar_text2">
                    <p style="font-size: 90%;">수리중</p> 
                </div>
                <div id="bar_text3">
                    <p style="font-size: 90%;">수리완료</p> 
                </div>
                <div id="bar_text4">
                    <p style="font-size: 90%;">배송완료</p>
                </div>
            </div>
            
            
        </section>

        <section id="request">
            <h1>요청내용</h1>
            <hr>
            <br>
            <p>고객님의 요청내용입니다.</p>
        </section>
    </main>

    <footer>
        <div id="footer_button">
            <a href="./5_repair_campany_list.html"><button type="button" id="foot">버튼</button></a>
            <a href="./6.html"><button type="button" id="foot">버튼</button></a>
            <a href="./order_of_reliability.html"><button type="button" id="foot">버튼</button></a>
            <a href="./6.html"><button type="button" id="foot">버튼</button></a>
            <a href="./6.html"><button type="button" id="foot">버튼</button></a>
        </div>
    </footer>
</body>
<script>
    var a = document.getElementById('progress').value;
    var b1 = document.getElementById('bar_text1').style;
    var b2 = document.getElementById('bar_text2').style;
    var b3 = document.getElementById('bar_text3').style;
    var b4 = document.getElementById('bar_text4').style;

    if(a>=0 && a<=25){
        b1.fontWeight = 'bold';
    }else if(a>25 && a<=50){
        b2.fontWeight = 'bold';
    }else if(a>50 && a<=75){
        b3.fontWeight = 'bold';
    }else if(a>75 && a<=100){
        b4.fontWeight = 'bold';
    }
</script>
</html>