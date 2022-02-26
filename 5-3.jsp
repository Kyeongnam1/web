<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0
   minimum-scale=1.0 user-scalable=no">  
  <title>Document</title>
    <!--초기화-->
  <style>
    *{padding: 0; margin: 0;}
    html,body{
        height: 100%;
        min-height: 100%;
    }
  </style>
  <!--헤더-->
  <style>
    #main_header{
      background: rosybrown;
      height: 50px;
      position: relative;
      line-height: 50px;
    }
    #main_header > button{
      border: none;
      width: 32px;
      right: 6px;
      top: 7px;
      display: block;
      height: 32px;
      position: absolute;
    }
  </style>
  <!--스프라이트 이미지-->
  <style>
    button{
      background: url('img/x_button.png');
      background-position: -64px 0;
      text-indent: -99999px;
    }
  </style>
  <style>
    #submit{
      background: url('img/x_button.png');
      background-position: -64px 0;
      text-indent: -99999px;
    }
  </style>
  <!--메인-->
  <style>
    main{
      overflow-y: scroll;
      position: relative;
      flex: auto;
    }
    table{
      border: 1px solid #444444;
      border-radius: 25px;
      width: 350px;
      height: 200px;
      margin: auto;
      padding: 10px;
      
    }
    section{
        text-align: center;
        margin-top: 20px;
    }
    body{
      display: flex;
      flex-direction: column;
    }
    tr{
      text-align: left;             
    }
    td{
      margin:0px;
      padding:0px;
    }
    #print{
      margin-top: 10px;
    }
  </style>
  <!--푸터-->
  <style>
    #footer > input{
      border: none;
      width: 32px;
      right: 6px;
      top: 7px;
      display: block;
      height: 32px;
      position: absolute;
    }
    #footer{ 
      height: 50px;
      width: 100%;
      position: fixed;
      bottom: 0px;
      line-height: 50px;
      background: rosybrown;
    }
  </style>
</head>
<%
    request.setCharacterEncoding("utf-8");
    String symptom = request.getParameter("symptom");
    String photo = request.getParameter("photo");
    String detail = request.getParameter("detail");
    String date = request.getParameter("date");
%>
<body>
    <header id="main_header">
        <button type="button">x</button>
    </header>
    <main>
        <section>
            <table>
                <colgroup> 
                    <col>
                    <col>
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
        <form>
            <section>
                <textarea id="print" cols="48" rows="30">
                <% out.println("\n" + symptom + "\n" + photo + "\n" + detail + "\n" + date);%>
                </textarea>
            </section>
        </form>
    </main>
    <footer id="footer">
        <input type="submit" id="submit">
    </footer>
</body>
</html>