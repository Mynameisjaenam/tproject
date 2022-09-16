<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
/* @import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css'); */
@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 100;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 300;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 400;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 500;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 900;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.otf)
      format('opentype');
}

body {
   margin: 0 auto;
}
/* body, table, div, p ,span{font-family:'Nanum Gothic';} */
body, table, div, p, span {
   font-family: 'Noto Sans KR';
}

a {
   text-decoration: none;
   color: #333;
}

/* #con {
   width: 100%;
   height: 100vh;
 /*   background-color: #f5f1ee; */
   background-image: url("https://blog.kakaocdn.net/dn/dC8sug/btqE1C7CoHK/W1cWrwnkVwXYcDJxyyqoQk/img.jpg");
   background-position: center center;
   background-repeat: no-repeat;
   background-size: cover;
   padding: 0;
} */

#login {
   width: 600px;
   height: 600px;
   margin: 0 auto;
   /* position: relative; */
   /* background:#ddd; */
}

#login_form {
   /* text-align:center; */
   border-radius: 10px;
   padding: 50px;
   background-color: rgba(051, 051, 051, 0.9);
   text-align: center;
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%); 
}

.login {
   font-size: 25px;
   font-weight: 900;
   color: #FDF5DC;
}

.size {
   width: 300px;
   height: 30px;
   padding-left: 10px;
   background-color: #FDF5DC;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
}

.btn {
   width: 310px;
   height: 40px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn:hover {
   background: #D7A35D;
}

.btn2 {
   width: 150px;
   height: 40px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn2:hover {
   background: #D7A35D;
}

.btn3 {
   width: 70px;
   height: 40px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn3:hover {
   background: #D7A35D;
}

hr {
   margin-top: 20px;
   background: #eee;
}

.find {
   color: #ddd;
   font-size: 12px;
}

.find span {
   padding-left: 10px;
}

.find span::before {
   content: '|';
   color: #333;
   padding-right: 10px;
}

.find span:nth-child(1):before {
   content: none;
}

.find span:nth-child(1) {
   padding-left: 0px;
}

.find a:hover {
   color: #707070;
}
input[name=userId]::placeholder {
  font-size: 0.9375em;
}

input[name=userPw]::placeholder {
  font-size: 0.9375em;
}
/* navbar */
.navbar-default {
    background-color: #282828;  /* transparent; */
    border-color: #282828;
    height: 9%;
}
/* title */
.navbar-default .navbar-brand {
    color: #ffffff;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
    color: #ffffff;
}
/* title */
.navbar-default .navbar-brand2 {
   color: #ffffff;
   float: left;
   font-size: 14px;
   margin-right: 50px;
}

.navbar-default .navbar-brand2:hover, .navbar-default .navbar-brand2:focus
   {
   color: #ffffff;
   float: left;
   
}
/* link */
.navbar-default .navbar-nav > li > a {
    color: #ffffff;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
    color: #D7A35D;
}
.navbar-default .navbar-nav > .active > a, 
.navbar-default .navbar-nav > .active > a:hover, 
.navbar-default .navbar-nav > .active > a:focus {
    color: #D7A35D;
    background-color: #D7A35D;
}
.navbar-default .navbar-nav > .open > a, 
.navbar-default .navbar-nav > .open > a:hover, 
.navbar-default .navbar-nav > .open > a:focus {
    color: #D7A35D;
    background-color: #D7A35D;
}
/* caret */
.navbar-default .navbar-nav > .dropdown > a .caret {
    border-top-color: #D7A35D;
    border-bottom-color: #D7A35D;
}
.navbar-default .navbar-nav > .dropdown > a:hover .caret,
.navbar-default .navbar-nav > .dropdown > a:focus .caret {
    border-top-color: #D7A35D;
    border-bottom-color: #D7A35D;
}
.navbar-default .navbar-nav > .open > a .caret, 
.navbar-default .navbar-nav > .open > a:hover .caret, 
.navbar-default .navbar-nav > .open > a:focus .caret {
    border-top-color: #D7A35D;
    border-bottom-color: #D7A35D;
}
/* mobile version */
 .navbar-default .navbar-toggle {
    border-color: #969696;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
    background-color: #969696;
}
.navbar-default .navbar-toggle .icon-bar {
    background-color: #D7A35D;
} 
@media (max-width: 767px) {
    .navbar-default .navbar-nav .open .dropdown-menu > li > a {
        color: #D7A35D;
    }
    .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
    .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
        color: #D7A35D;
    }  
}
#info{
   font-size: 50px;
}
#seat{
   font-size: 30px;
}

</style>
<title>The Venue Study Cafe</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The Venue template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
   href="resources/styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
   href="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
   href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
   href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link href="resources/plugins/jquery-datepicker/jquery-ui.css" rel="stylesheet"
   type="text/css">
<link href="resources/plugins/jquery-timepicker/jquery.timepicker.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="resources/styles/about.css">
<link rel="stylesheet" type="text/css"
   href="resources/styles/about_responsive.css">
</head>
<body>
   <%
   String USERID = (String) session.getAttribute("SessionUserID"); //정상적으로 로그인이 진행되면 USERID,USERPW에 값이 들어옴
   String USERPW = (String) session.getAttribute("SessionUserPW");
   String USERNAME = (String) session.getAttribute("SessionUserName");
   String USERPHONE = (String) session.getAttribute("SessionUserPhone");
   String USERBIRTH = (String) session.getAttribute("SessionUserBirth");
   %>
   <div class="super_container">

      <!-- Header -->

      <div class="header">
         <nav class="navbar navbar-default navbar-fixed-top">  
            <div class="container">
               <div class="navbar-header">                  
                  <a href="main.do" class="navbar-brand" style="text-decoration: none;"> 
                  <span style="font: 1em Edwardian Script; font-size: 250%;" class="navbar-brand">
                  The Venue</span> <br> 
                    <span style="font: 1em Edwardian Script; font-size: 100%;" class="navbar-brand">S T U D Y &nbsp; C A F E</span>
                  </a>
                   
               </div>
            
               <div class="navbar-header" id="bs-example-navbar-collapse-1 aaa">
                     <a href="main.do" class="navbar-brand2">HOME</a>
                     <a href="about.jsp" class="navbar-brand2">ABOUT</a>
                     <a href="list.do" class="navbar-brand2">FREEBOARD</a>                     
                           <%
                              if (USERID != null && USERPW != null && (USERID.equals("ADMIN")))   { // 로그인이 됐을시
                           %>
                           <a href="" class="navbar-brand2">전체관리자</a> <!--예약목록  -->
                           <a href="adminReserveList.do" class="navbar-brand2">예약목록</a> <!--예약목록  -->
                           <a href="userList.do" class="navbar-brand2">회원목록</a> <!--회원목록 --> 
                           <a href="logout.do" class="navbar-brand2">LOGOUT</a>
                           <%
                              } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN1")))   { // 로그인이 됐을시
                           %>
                           <a href="" class="navbar-brand2">대구알파시티점</a>
                           <a href="admin1ReserveList.do" class="navbar-brand2">예약목록</a> <!--예약목록  -->
                           <a href="userList.do" class="navbar-brand2">회원목록</a> <!--회원목록 --> 
                           <a href="logout.do" class="navbar-brand2">LOGOUT</a>
                           <%
                              } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN2")))   { // 로그인이 됐을시
                           %>
                           <a href="" class="navbar-brand2">대구만촌점</a>
                           <a href="admin2ReserveList.do" class="navbar-brand2">예약목록</a> <!--예약목록  -->
                           <a href="userList.do" class="navbar-brand2">회원목록</a> <!--회원목록 --> 
                           <a href="logout.do" class="navbar-brand2">LOGOUT</a>
                           <%
                              }else if(USERID != null && USERPW != null){   
                           %>
                           <a href="reserve.do" class="navbar-brand2">RESERVE</a>
                           <a href="reserveConfirm.do" class="navbar-brand2">RESERVATION CONFIRM</a>
                           <a href="myPage.do" class="navbar-brand2">MYPAGE</a>                    
                           <a href="logout.do" class="navbar-brand2">LOGOUT</a>
                           <%
                              } else{ //로그인이 안됐을시
                           %>
                           <a href="seatInfoAlpha.do" class="navbar-brand2">RESERVE</a>
                           <a href="login.do" class="navbar-brand2">LOGIN</a>
                           <%
                              }
                           %>
                           
                  </div>
               </div>
            </div>
         </nav>
      </div>
      <!--/header-->
   
      <!-- Home -->
      <div id="con">
      <div class="home">
         <div class="parallax_background parallax-window"
            data-parallax="scroll" data-image-src="images/about.jpg"
            data-speed="0.8"></div>
         <div class="home_container">
            <div class="container">
               <div class="row">
                  <div class="col">
                     <div class="home_content text-center">
                        <div class="home_subtitle page_subtitle" style="font-size:8.0em">The Venue is</div>
                        <br><br>
                        <div class="home_title" id="info">
                           About us
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- Intro -->

      <div class="intro">
         <div class="container">
            <div class="row">
               <div class="col">
                  <div class="intro_content">

                     <div class="intro_title">
                        <h2>The Venue Introduce</h2>
                     </div>
                     <div class="intro_text">
                        <p>저희는 여러분들의 최적의 공부 환경을 위해 최선의 서비스를 제공 합니다.</p>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-8">
                        <div class="intro_image">
                           <img src="resources/images/about_intro.jpg"
                              alt="https://unsplash.com/@quanle2819">
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- A cafe -->

      <div class="chefs">
         <div class="container">
            <div class="row">
               <div class="col">
               <div class="home_content text-center">
                  <div class="section_title_container" id="info">
                     <div class="home_title" id="info">
                        The Venue information
                     </div>
                  </div>
                  <br>
                  <br>
                  <br>
                  <br>
                  <div class="section_title_container" id="info">
                     <div class="home_title" id="info">
                        대구알파시티점
                     </div>
                  </div>
                  </div>
               </div>
            </div>
            <div class="row chefs_text_row">
               <div class="col-lg-6">
                  <div class="chefs_text">
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="chefs_text">

                  </div>
               </div>
               
            </div>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                     <img src="resources/images/no1.PNG" style="width:730px; height:500px;" alt="">
                  </div>
               </div>
               <div class="intro_content">

                     <div class="intro_title">
                        <h3>집중력을 높이기 위한 공간배치</h3>
                     </div>
                     <div class="intro_text">
                        <p>자유로운 분위기 속 공부 습관을 만들어주는<br> 최적의 학습공간을 제공합니다.</p>
                     </div>
                  </div>
               &nbsp;&nbsp;&nbsp;&nbsp;
               <div class="col-lg-7">
                  <div class="chefs_text">
                     <img src="resources/images/no2.PNG" style="width:730px; height:500px;" alt="">
                  </div>
               </div>
            </div>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                  <div class="intro_text" id="seat">
                        SEAT                        
                     </div>
                     <img src="resources/images/seat.png" style="width:900px; height:500px;" alt="">
                  </div>
               </div>
            </div>
            <br>
            <br>
            <br><br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
         
         </div>

         <!-- Chef -->
         <div
            class="col-xl-3 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
            <div class="chef">
               <div class="chef_content text-center">

                  
               </div>

            </div>
         </div>
      </div>
      <!--  -->
      <!-- B cafe -->

            <br>
            <br>
            
      <div class="chefs">
         <div class="container">
            <div class="row">
               <div class="col">
                  <div class="home_content text-center">
                  <div class="section_title_container" id="info">
                     <div class="home_title" id="info">
                        대구 만촌점
                     </div>
                  </div>
                  </div>
               </div>
            </div>
            <div class="row chefs_text_row">
               
            </div>
            
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                     <img src="resources/images/ffff.jpg" style="width:730px; height:500px;" alt="">
                  </div>
               </div>
               <div class="intro_content">

                     <div class="intro_title">
                        <h2>최적의 환경</h2>
                     </div>
                     <div class="intro_text">
                        <p>자유로운 분위기 속 공부 습관을 만들어주는<br> 최적의 학습공간을 제공합니다.</p>
                     </div>
                  </div>
               &nbsp;&nbsp;&nbsp;&nbsp;
               <div class="col-lg-7">
                  <div class="chefs_text">
                     <img src="resources/images/aaaa.jpg" style="width:730px; height:500px;" alt="">
                  </div>
               </div>
            </div>
            <br><br><br>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                  <div class="intro_text" id="seat">
                        SEAT                        
                     </div>
                     <img src="resources/images/al.png" style="width:900px; height:500px;" alt="">
                  </div>
               </div>
            </div>
            
               
            
            
         </div>

         <!-- Chef -->
         <div
            class="col-xl-3 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
            <div class="chef">
               <div class="chef_content text-center">

                  
               </div>

            </div>
         </div>
      </div>
      <!-- 이용안 cafe -->

      <div class="chefs">
         <div class="container">
            <div class="row">
               <div class="col">
                  <div class="section_title_container">
                     <div class="section_title">
<br><br><br><br><br><br><br><br><br><br><br><br>
                        <h1>Information</h1>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                     <img src="resources/images/abc1.png" alt="">
                  </div>
               </div>
            </div>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">   
                     <img src="resources/images/abc2.png" alt="">
                  </div>
               </div>
            </div>   
         </div>  

         <!-- Chef 
         <div
            class="col-xl-3 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end" >
            <div class="chef">
               <div class="chef_content text-center">
                  <div class="reserve" >
                     <input type="button" class="btn2" onclick="location.href='reserve.do'" value="예약하러가기"></input>
                  </div>
               </div>
               </div>

            
         </div>
      </div>-->
      
      <!-- Footer -->

   <footer class="footer">
      <div class="container">
         <div class="row">

            <!-- Footer Logo -->
            <div class="col-lg-3 footer_col">
               <div class="footer_logo">
                  <div class="footer_logo_title">The Venue</div>
                
                  <div class="footer_logo_subtitle">Study Cafe</div>
               </div>

            </div>

            <!-- Footer About -->
            <div class="col-lg-6 footer_col">
               <div class="footer_about">
                  <p>
                     카페형 독서공간 / 스터디카페 <br>여러분들의 성공을 위하여 공간을 연구하고 제공합니다.<br>책과
                     음악과 공간이 있는 The Venue에서 가치 있는 시간을 보내세요!
                  </p>
               </div>
            </div>

            <!-- Footer Contact -->
            <div class="col-lg-3 footer_col">
               <div class="footer_contact">
                  <ul>
                     <li
                        class="d-flex flex-row align-items-start justify-content-start">
                        <div>
                           <div class="footer_contact_title">Address:</div>
                        </div>
                        <div class="footer_contact_text">Daegu SuseongGu
                           AlphaCity1Ro 170</div>
                     </li>
                     <li
                        class="d-flex flex-row align-items-start justify-content-start">
                        <div>
                           <div class="footer_contact_title">Contact:</div>
                        </div>
                        <div class="footer_contact_text">+53 655 5600</div>
                     </li>
                     <li
                        class="d-flex flex-row align-items-start justify-content-start">
                        <div>
                           <div class="footer_contact_title">Email:</div>
                        </div>
                        <div class="footer_contact_text">dip@gmail.com</div>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </footer>
   </div>

   <script src="resources/js/jquery-3.2.1.min.js"></script>
   <script src="resources/styles/bootstrap-4.1.2/popper.js"></script>
   <script src="resources/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
   <script src="resources/plugins/greensock/TweenMax.min.js"></script>
   <script src="resources/plugins/greensock/TimelineMax.min.js"></script>
   <script src="resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
   <script src="resources/plugins/greensock/animation.gsap.min.js"></script>
   <script src="resources/plugins/greensock/ScrollToPlugin.min.js"></script>
   <script src="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
   <script src="resources/plugins/easing/easing.js"></script>
   <script src="resources/plugins/parallax-js-master/parallax.min.js"></script>
   <script src="resources/plugins/jquery-datepicker/jquery-ui.js"></script>
   <script src="resources/plugins/jquery-timepicker/jquery.timepicker.js"></script>
   <script src="resources/js/about.js"></script>
</body>
</html>