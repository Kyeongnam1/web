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
        #menu{
            border-radius: 25px;
            background-color: rgb(206, 207, 212);
            line-height: 300%;
        }
        #menu ul{
            width: 100%;
            overflow: hidden;
        }
        #menu ul li{
            float:left;
            width:33.33%;
            text-align: center;
            list-style: none;
        }
        a:active{
            color: rgb(139, 139, 177);
        }
        #text{
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
            width:95%;
            text-align: center;
            height:90%;
        }
        button{
            border-radius: 10px;
            width:100%;
            height:100%;
        }
    </style>
</head>
<body>
    <%
        String 업체_업체이름 = request.getParameter("업체_업체이름");
        int 업체_리뷰수 = Integer.parseInt(request.getParameter("업체_리뷰수"));
        int 업체_신뢰도 = Integer.parseInt(request.getParameter("업체_신뢰도"));
        String 업체_업체정보 = request.getParameter("업체_업체정보");
        
        String 리뷰_리뷰내용 = request.getParameter("리뷰_리뷰내용");

        String QNA_QNA내용 = request.getParameter("QNA_QNA내용");

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
                    <td rowspan="3"><img src="images/icon.png" alt="업체" id="com_img"></td>
                    <td>상호명</td> 
                </tr>
                <tr>
                    <td>리뷰수</td>
                </tr>
                <tr>
                    <td>신뢰도</td>
                </tr>
            </table>
        </section>

        <section id="nav">
            <nav id="menu">
                <ul>
                    <a onclick="hideshow1()"><li>업체정보</li></a>
                    <a onclick="hideshow2()"><li>리뷰</li></a>
                    <a onclick="hideshow3()"><li>QnA</li></a>
                </ul>
            </nav>
        </section>

        <section id="text">
            <div id="information">
                <h1>업체정보</h1>
                <hr>
                <br>
                <div id="picc"><img src="images/4.jpg" alt="4"></div>
                <p>수원에 있습니다. 수원에 있습니다.수원에 있습니다. 수원에 있습니다.수원에 있습니다. 수원에 있습니다.수원에 있습니다.수원에 있습니다.</p>
               
            </div>

            <div id="review" style="display:none">
                <h1>리뷰</h1>
                <hr>
                <br>
                <div id="wholerate">
                    <h1 style="font-size: 250%; display:inline;">5.0</h1><p style="display:inline;">&nbsp;&nbsp;⭐⭐⭐⭐⭐</p>
                </div>
                <hr>
                <br>
                <div id="rate">
                    <h2 style="display:inline;">김*남</h2> <p style="display:inline;">&nbsp;&nbsp;⭐⭐⭐⭐⭐</p>
                    <p style="color:gray">추천합니다.</p>
                </div>
            </div>
            
            <div id="qna" style="display:none">
                <h1>QnA</h1>
                <hr>
                <br>
                <div id="answer">
                    <h2>Q. 몇살이세요?</h2>
                    <p style="color:gray">25살입니다.</p>
                </div>
                
            </div>  
        </section>
    </main>

    <footer>
        <div id="footer_button">
            <a href="./5-2.html"><button type="button" >버튼</button></a>
        </div>
    </footer>
</body>
<script>

    function hideshow1(){
        document.getElementById("information").style.display = "block";
        document.getElementById("review").style.display = "none";
        document.getElementById("qna").style.display = "none";
    }
    function hideshow2(){
        document.getElementById("information").style.display = "none";
        document.getElementById("review").style.display = "block";
        document.getElementById("qna").style.display = "none";
    }
    function hideshow3(){
        document.getElementById("information").style.display = "none";
        document.getElementById("review").style.display = "none";
        document.getElementById("qna").style.display = "block";
    }

</script>
</html>