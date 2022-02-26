<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0
    minimum-scale=1.0 user-scalable=no">  
  <title>fix require</title>
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
    body{
      display: flex;
      flex-direction: column;
    }
    select[name = "symptom"]{
      position: relative;
      border-radius: 6px;
      top: -3px;
    }
    select[name = "photo"]{
      position: relative;  
      border-radius: 6px;
      top: -3px;
    }
    form{
      font-size: 20px;
      padding: 10px;
    }
    form > section{
      margin: 30px;
    }
    main{
      overflow-y: scroll;
      position: relative;
      flex: auto;
    }
    #form2{
     font-size: 20px;
     height: 60%;
    }
    #sec1{
      width: 100%;
      overflow-y: scroll;
      position: relative;
      left: -25px;
    }
    #detail{
        width: 80%;
    }
    #sec2{
      position: relative;
      left: -25px;  
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
    #submit{
      bottom: 11px;
      border: none;
      width: 32px;
      right: 6px;
      display: block;
      height: 32px;
      position: absolute;
      z-index: 1;
    }
  </style>
</head>
<body>
  <header id="main_header">
     <button type="button">x</button>
  </header>
  <main>
    <form id="form1" method="post" action="5-3.jsp">
      <label for="symptom">고장 증상</label>
      <select name="symptom" id="symptom" size='1'>
        <option value="" selected>선택</option>
        <option value="1" >1</option>
        <option value="2" >2</option>
        <option value="3" >3</option>
        <option value="4" >4</option>
        <option value="5" >5</option>
      </select><br><br>
      <label for="photo">사진/동영상 첨부</label>
      <select name="photo" id="photo" size='1'>
        <option value="" selected>선택</option>
        <option value="1" >1</option>
        <option value="2" >2</option>
        <option value="3" >3</option>
        <option value="4" >4</option>
        <option value="5" >5</option>
      </select>
      <section id="sec1">
        <textarea name= "detail" id="detail" cols="46" rows="30" placeholder="상세 증상을 입력해주세요"></textarea>
      </section>
      <section id="sec2">
        <input type="date" name="date" value="2022-02-09" min="2022-02-09" max="2022-12-31">
      </section>  
      <input type="submit" id="submit">
    </form>  
    <footer id="footer"></footer>
  </main>
</html>