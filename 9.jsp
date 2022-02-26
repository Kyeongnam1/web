<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0
   minimum-scale=1.0 user-scalable=no">  
  <title>my page</title>
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
  <!--푸터-->
  <style>
   .BottomMenu { 
      position: fixed; 
      bottom: 0px; 
      left: 0px; 
      width: 100%; 
      height: 50px; 
      z-index:100; 
      border-top: 1px solid black; 
      background-color: white;
      align-content: center; 
    }
    .BottomMenu > div { float:left; width: 25%; height: 100%; text-align:center; padding-top: 1px; }
 </style>
</head>
<body>
 <header id="main_header">
     <button type="button">x</button>
 </header>
 <main>
 
 </main>
 <footer class="BottomMenu">
    <div>
      <img src="image/menu.png" alt="수리업체목록" width="25%" height="50%" style="align-items: center;">
    </div>
    <div>
      <img src="image/repair_request.png" alt="수리요청" width="25%" height="50%" style="align-items: center;">
    </div>
    <div>
      <img src="image/request_document.png" alt="견적서 확인" width="25%" height="50%" style="align-items: center;">
    </div>
    <div>
      <img src="image/profile.png" alt="마이페이지" width="25%" height="50%" style="align-items: center;">
    </div>
  </footer>
</body>
</html>