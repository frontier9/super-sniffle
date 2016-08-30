<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<c:url value="/login" var="loginUrl"/>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->

<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="" />
<meta name="author" content="trv">
<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />"/>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>	">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/trv_style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/navbar.css" />" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/login.css" />">
<title>Travelia</title>


</head>
<body>

<!-- Modal -->
<div class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
    
      <div class="bs-example bs-example-tabs">
            <ul id="myTabs" class="nav nav-tabs">
              <li class="active"><a href="#signin" data-toggle="tab">로그인</a></li>
              <li role="presentation"><a href="#pass" data-toggle="tab">비밀번호 찾기</a></li>
              <li role="presentation"><a href="#signup" data-toggle="tab">회원가입</a></li>
          </ul>
      </div>
      
      <div class="modal-body" >
        <div id="myTabContent" class="tab-content">
          <!-- </div> -->
            <!-- login  -->
            <div class="tab-pane fade in active" id="signin">
               <form class="form center-block" action="${loginUrl}" method="post">
               		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                    <fieldset>
                    <br>
						<div class="form-group">
                                <input type="email" name ="username" class="form-control" placeholder="이메일을 입력하세요">
					    </div>

                        <div class="form-group">
                            <input type="password" name ="password" class="form-control" placeholder="비밀번호를 입력하세요">
                        </div>

						<div class="form-inline text-right">
							<div class="form-group">
								<button id="submit" name="sigin1" class="btn btn-info">접속하기!</button>
							</div>
							<div class="form-group">
								 <button class="btn btn-info" id="myPass"><a href="#pass" data-toggle="tab">비번찾기!</a></button>
							</div>
						</div>
					</fieldset>
        </form>
    </div>
    
    <!-- 비밀번호 찾기 시작 -->
    
    <!-- login  -->
     <div class="tab-pane fade" id="pass">
        <form class="form center-block">
             <fieldset>
               <br>
               <div class="form-group">
                   <input type="email" class="form-control" id="user_email" name="user_email" placeholder="이메일을 입력해주세요">
               </div>
               
               <div class="form-group text-right">
                     <button id="submit" name="sigin1" class="btn btn-info">비번찾기!</button>
               </div>
            </fieldset>
        </form>
    </div>
    <!-- 비밀번호 찾기 끝 -->

    <!-- sign up -->
    <div class="tab-pane fade" id="signup">
         <form class="form center-block" action="#" method="post" id="sign_up" name="sign_up">
            <fieldset>
               <br>
               <div class="form-group">
                   <div class="input-group">
                       <input type="email" class="form-control" id="user_email" name="user_email" placeholder="이메일을 입력해주세요">
                       <span class="input-group-btn">
                       	<button class="btn btn-info" type="button">중복확인</button>
                       </span>
                   </div>
                   <p></p>
               </div>
             
               <div class="form-group">
                   <div class="input-group">
                       <input type="text" class="form-control" id="user_nick" name="user_nick" placeholder="닉네임을 입력해주세요">
                       <span class="input-group-btn">
                       	 <button class="btn btn-info" type="button">중복확인</button>
                       </span>
                   </div>
                   <p></p> 
               </div>
               
               <div>            
	               <div class="form-group">
	                   <input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요" >
	               </div>
	               <p></p>
               </div>
               
               <div>
	               <div class="form-group">
	                   <input type="password" class="form-control" id="user_pw_chk" name="user_pw_chk" placeholder="비밀번호를 한번 더 입력해주세요">
	               </div>
				   <p></p>
               </div>
               
               <div>                            
	               <div class="form-inline text-left">
	                    <input type="file" class="form-control" style="display: block; visibility: hidden;" id="file_input" name="file_input" 
	                    accept="image/bmp, image/gif, image/jpeg, image/png">
	                    <label for="file_input">선택해</label><div id="filename"></div>
	               </div>
	               <p id="file_error"></p>
               </div>
               
     			
     		   <div class="form-inline text-right">
	               <div class="form-group">         
	               		<input type="submit" class="btn btn-info" value="등록하기!" />
	               </div>
	               <div class="form-group">         
	               		<button type="reset" class="btn btn-info">취소하기!</button>
	               </div>
               </div>	
            	
        </fieldset>
    </form>	
</div>

</div> <!-- .tab-content-->
</div> <!-- .modal-body-->
						<div class="modal-footer">
						    <div class="text-center">
						    	 <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						    </div>
						</div>
		</div> <!-- .modal-content-->
	</div> <!-- .modal-dialogue-->
</div> <!-- .modal-->


	<div class="banner" id="trv_banner_slide">
		<ul>
			<li class="trv_banner_slide_01">
				<div class="slide_caption">
					<h1>경주 불국사</h1>
					<p>불국사는 찬란한 신라 불교문화의 핵심으로 1,440년 전 신라
						법흥왕 22년에 나라의 안정과 백성의 평안을 위하여 세워졌다.</p>
				</div>
			</li>
			<li class="trv_banner_slide_02">
				<div class="slide_caption">
					<h1>서울 북촌한옥마을</h1>
					<p>예로부터 원서동, 재동, 계동, 가회동, 인사동으로 구성된 이
						지역은 청계천과 종로의 윗 동네라는 이름에서 ‘북촌'이라는 이름으로 불리었으며, 당시로써는 왕실의 고위관직에 있거나
						왕족이 거주하는 고급 주거지구로 유명하였다.</p>
				</div>
			</li>
			<li class="trv_banner_slide_03">
				<div class="slide_caption">
					<h1>여수 향일암</h1>
					<p>향일암은 전국 4대 관음 기도처 중의 한 곳으로 644년 백제
						의자왕 4년 신라의 원효대사가 창건하여 원통암이라 불렀다.</p>
				</div>
			</li>
		</ul>
	</div>

	<!-- navbar for mobile -->
	<div id="trv_mobile_menu">

		<ul class="nav nav-pills nav-stacked">

			<li><a href="#"><span class="fa fa-home fa-fw"></span>&nbsp;Home</a></li>
			<li><a href='<c:url value="/travelnote/list" />'><span class="fa fa-book fa-fw"></span>&nbsp;Travelnote</a></li>
			<li><a href='<c:url value="/schedule/add" />'><span class="fa  fa-calendar fa-fw"></span>&nbsp;Schedule</a></li>
			<li><a href='<c:url value="/board/board" />'><span class="fa fa-pencil-square-o fa-fw"></span>&nbsp;Board</a></li>
			<li><a href='<c:url value="/profile/profile"/>'><span class="fa fa-user fa-fw"></span>&nbsp;Profile</a></li>
			<!-- login 전 -->
			<sec:authorize access="! isAuthenticated()">		
			<li>
				<a href=""  data-toggle="modal" data-target="#login_modal">
					<span class="fa fa-sign-in fa-fw"></span>
						&nbsp;Login
				</a>
			</li>
			</sec:authorize>
			<!-- login 후 ${pageContext.request.userPrincipal.name} -->
			<sec:authorize access="isAuthenticated()">	
			<li><form name="logoutmobile" method="post" action="${pageContext.request.contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<a href="javascript:document.logoutmobile.submit();">
					<span class="fa fa-sign-in fa-fw"></span>
						&nbsp;Logout
				</a>
			</form></li>
			</sec:authorize>

		</ul>
	</div>
	<!-- navbar for mobile --> 
	

	<!-- Navigation bar starts -->
	<div class="container_wrapper">
		<div id="trv_banner_menu">
			<div class="container-fluid">

					<div class="col-xs-3 trv_logo">
						<a href="#"> <img src="<c:url value="/resources/images/hml.svg" />" id="logo_img" alt="TraVeliA" title="TraVeliA" />
							<h1 id="logo_text">Tra<span>Veli</span>A</h1>
						</a>

					</div>

					<div class="col-sm-9 hidden-xs">
						<ul class="nav nav-justified">
							<li class="active"><a href="#home">Home</a></li>
							<li><a href='<c:url value="/travelnote/list" />'>Travelnote</a></li>
							<li><a href='<c:url value="/schedule/add" />'>Schedule</a></li>
							<li><a href='<c:url value="/board/board" />'>Board</a></li>
							<li><a href='<c:url value="/profile" />'>Profile</a></li>
							<!-- login 전 -->
						<sec:authorize access="! isAuthenticated()">			
							<li><a href=""  data-toggle="modal" data-target="#login_modal"><span class="fa fa-sign-in"></span>&nbsp;Login</a></li>
						</sec:authorize>
							<!-- login 후 -->
						<sec:authorize access="isAuthenticated()">				
							<li><form name="logout" method="post" action="${pageContext.request.contextPath}/logout">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								<a href="javascript:document.logout.submit();">
									<span class="fa fa-sign-in"></span>
									&nbsp;Logout
								</a>
							</form></li>
						</sec:authorize>						
						</ul>
					</div>

					<div class="col-xs-9 visible-xs">
						<a href="#" id="mobile_menu">
							<span class="glyphicon glyphicon-th-list"></span>
						</a>
					</div>

			</div>
		</div>
	</div>
	<!-- Navigation bar ends -->
	
	<div id="trv_about" class="container_wapper">
		<div class="container-fluid">
			<h1>뭐하는 곳인가요??</h1>
			<div class="col-sm-6 col-md-4 about_icon">
				<div class="imgwap mission">
					<i class="fa fa-pencil-square-o"></i>
				</div>
				<h2>여행 계획</h2>
				<p>
					Travelia가 제공하는 직관적인 인터페이스로<br />손쉽게 나만의 여행 일정을 세워보세요
				</p>
			</div>
			<div class="col-sm-6 col-md-4 about_icon">
				<div class="imgwap product">
					<i class="fa fa-book"></i>
				</div>
				<h2>일정 공유</h2>
				<p>
					다녀온 여행의 여운을 다른 사용자들과<br />공유하거나 참고할 수 있습니다
				</p>
			</div>
			<div class="col-sm-6 col-md-4 about_icon">
				<div class="imgwap testimonial">
					<i class="fa fa-comments"></i>
				</div>
				<h2>나만의 노하우</h2>
				<p>여행과 관련된 꿀팁들을 묻고 답할 수 있습니다</p>
			</div>
		</div>
	</div>

			


	<div id="trv_events" class="container_wapper">
		<div class="container-fluid">

			<h1>뭐라고요?</h1>

			<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-0">
				<div class="event_box_wap event_animate_left">
					<div class="event_box_img">
						<img src="<c:url value="/resources/images/south-korea-travel-map-lovely-flat-style-61890108.png"/>" class="img-responsive" alt="" />
					</div>

					<div class="event_box_caption">
						<h1>먼저 떠날 곳을 정하세요!</h1>
						<p><span class="glyphicon glyphicon-hand-right"></span>&nbsp;&nbsp;설명하세요</p>
					</div>
				</div>
			</div>

			<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-0">
				<div class="event_box_wap event_animate_right">
					<div class="event_box_img">
						<img src="<c:url value="/resources/images/dragndrop.png" />" class="img-responsive" alt="" />
					</div>
					<div class="event_box_caption">
						<h1>찾은 곳을 끌어다 놓으세요!</h1>
						<p><span class="glyphicon glyphicon-hand-right"></span>&nbsp;&nbsp;설명하세요</p>
					</div>
				</div>
			</div>

			<div class="clearfix"></div>

			<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-0">
				<div class="event_box_wap event_animate_left">
					<div class="event_box_img">
						<img src="<c:url value="/resources/images/hanging_polaroids_by_anushka04.png" />" class="img-responsive"
							alt="" />
					</div>

					<div class="event_box_caption">
						<h1>다녀온 곳에 대한 기록을 남기세요!</h1>
						<p><span class="glyphicon glyphicon-hand-right"></span>&nbsp;&nbsp;설명하세요</p>
					</div>
				</div>
			</div>

			<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-0">
				<div class="event_box_wap event_animate_right"> 
					<div class="event_box_img">
						<img src="<c:url value="/resources/images/Speak_Share-your-ideas.jpg" />" class="img-responsive"
							alt="" />
					</div>

					<div class="event_box_caption">
						<h1>정보를 공유하세요!</h1>
						<p><span class="glyphicon glyphicon-hand-right"></span>&nbsp;&nbsp;설명하세요</p>
					</div>
				</div>
			</div>

		</div>
	</div>


	<div id="trv_timeline" class="container_wapper">
		<h1>타임라인</h1>
		<div class="container-fluid">
		
			<div class="time_line_wap">
				<div class="time_line_caption">2주전</div>
				<div class="time_line_paragraph">
					<h1>소양강에 다녀오다!</h1>
					<p>
						<span class="glyphicon glyphicon-user"></span> <a href="#">김수정</a>님&nbsp;&nbsp; 
						<span class="glyphicon glyphicon-map-marker"></span> <a href="#">강원도 춘천시 동면</a>
					</p>
					<p>해 저문 소양강이 황혼이 지면 외로운 갈대밭에 슬피우는 두견새야 열여덟 딸기같은 어린 내 순정 너마저 몰라주면 나는 나는 어쩌나 아~ 그리워서 애만태우는 소양강처녀</p>
				</div>
			</div>
			
			
			<div class="time_line_wap">
				<div class="time_line_caption">1달전</div>
				<div class="time_line_paragraph">
					<h1>소양강에 다녀오다!</h1>
					<p>
						<span class="glyphicon glyphicon-user"></span> <a href="#">김수정</a>님&nbsp;&nbsp; 
						<span class="glyphicon glyphicon-map-marker"></span> <a href="#">강원도 춘천시 동면</a>
					</p>
					<p>해 저문 소양강이 황혼이 지면 외로운 갈대밭에 슬피우는 두견새야 열여덟 딸기같은 어린 내 순정 너마저 몰라주면 나는 나는 어쩌나 아~ 그리워서 애만태우는 소양강처녀</p>
				</div>
			</div>
			
			
			<div class="time_line_wap">
				<div class="time_line_caption" id="fire_point">3달전</div>
				<div class="time_line_paragraph">
					<h1>소양강에 다녀오다!</h1>
					<p>
						<span class="glyphicon glyphicon-user"></span> <a href="#">김수정</a>님&nbsp;&nbsp; 
						<span class="glyphicon glyphicon-map-marker"></span> <a href="#">강원도 춘천시 동면</a>
					</p>
					<p>해 저문 소양강이 황혼이 지면 외로운 갈대밭에 슬피우는 두견새야 열여덟 딸기같은 어린 내 순정 너마저 몰라주면 나는 나는 어쩌나 아~ 그리워서 애만태우는 소양강처녀</p>
				</div>
			</div>
			
			
			
			<div class="time_line_wap">
				<div class="time_line_caption">2016.03.02</div>
				<div class="time_line_paragraph">
					<h1>소양강에 다녀오다!</h1>
					<p>
						<span class="glyphicon glyphicon-user"></span> <a href="#">김수정</a>님&nbsp;&nbsp; 
						<span class="glyphicon glyphicon-map-marker"></span> <a href="#">강원도 춘천시 동면</a>
					</p>
					<p>해 저문 소양강이 황혼이 지면 외로운 갈대밭에 슬피우는 두견새야 열여덟 딸기같은 어린 내 순정 너마저 몰라주면 나는 나는 어쩌나 아~ 그리워서 애만태우는 소양강처녀</p>
				</div>
			</div>
			
			
			
			<div class="time_line_wap">
				<div class="time_line_caption">2016.02.01</div>
				<div class="time_line_paragraph">
					<h1>소양강에 다녀오다!</h1>
					<p>
						<span class="glyphicon glyphicon-user"></span> <a href="#">김수정</a>님&nbsp;&nbsp; 
						<span class="glyphicon glyphicon-map-marker"></span> <a href="#">강원도 춘천시 동면</a>
					</p>
					<p>해 저문 소양강이 황혼이 지면 외로운 갈대밭에 슬피우는 두견새야 열여덟 딸기같은 어린 내 순정 너마저 몰라주면 나는 나는 어쩌나 아~ 그리워서 애만태우는 소양강처녀</p>
				</div>
			</div>
			
			
			
			<div class="time_line_wap">
				<div class="time_line_caption">1년전</div>
				<div class="time_line_paragraph">
					<h1>소양강에 다녀오다!</h1>
					<p>
						<span class="glyphicon glyphicon-user"></span> <a href="#">김수정</a>님&nbsp;&nbsp; 
						<span class="glyphicon glyphicon-map-marker"></span> <a href="#">강원도 춘천시 동면</a>
					</p>
					<p>해 저문 소양강이 황혼이 지면 외로운 갈대밭에 슬피우는 두견새야 열여덟 딸기같은 어린 내 순정 너마저 몰라주면 나는 나는 어쩌나 아~ 그리워서 애만태우는 소양강처녀</p>
				</div>
			</div>
			
			
			
		</div>
	</div>
	<div id="trv_contact" class="container_wapper">
		<div class="container-fluid">
			<h1>의견을 공유해주세요!</h1>
			
			<div class="col-md-4">
				<h2><strong style="color: #00e6e6;">Tra<span id="endlogo">Veli</span>A</strong></h2>
				<p>역마살을 지니고 태어난 사람들이 모여 역마살을 주체할 수 없는 분들을 위해
				만든 사이트 <strong style="color: #00e6e6;">Tra<span id="endlogo">Veli</span>A</strong>는 여러분의 참여를 기다립니다. 언제든지 연락주세요!</p>
				<br>
				<p>
					<strong>전자우편:</strong> admin@TraVeliA.co.kr<br />
					<strong>전화번호:</strong> 080-1022-4021<br />
					<strong>회사주소:</strong> www.Travelia.co.kr<br />
				</p>
				<!-- <ul class="list-inline social-link">
					<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-youtube"></i></a></li>
					<li><a href="#"><i class="fa fa-github"></i></a></li>
				</ul>  -->
			</div>
			<form action="#" method="post" class="col-md-8">
				<div class="row">
					<div class="col-md-12">
						<h2>의견란</h2>
					</div>
					<div class="col-md-6">
						<p>성&nbsp;&nbsp;함</p>
						<input type="text" name="name" id="name" placeholder="Your Name"/>
					</div>
					<div class="col-md-6">
						<p>전자우편</p>
						<input type="text" name="email" id="email"
							placeholder="Your Email" />
					</div>
					<div class="col-md-12">
						<p>제&nbsp;&nbsp;목</p>
						<input type="text" name="subject" id="subject"
							placeholder="Subject" />
					</div>
					<div class="col-md-12">
						<p>내&nbsp;&nbsp;용</p>
						<textarea name="message" id="message"
							placeholder="Write your message here..."></textarea>
					</div>
					<div class="col-xs-10 col-sm-3 col-md-offset-10">
						<button type="submit">보내기</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="trv_footer">
		<div>
			<p id="footer">Copyright &copy; 2016 TraVelia</p>
		</div>
	</div>
	
	  <div class="navbar navbar-default navbar-fixed-bottom" role="navigation" id="top-nav">
  	          <div class="container">
  	            <div class="navbar-header">
  	              <!-- Logo Starts -->
  	              <a class="navbar-brand" href="#home"> </a>
  	              <!-- #Logo Ends -->


  	              <button type="button" class="navbar-toggle collapsed navbar-pos" data-toggle="collapse" data-target=".navbar-collapse">
  	                <span class="sr-only">Toggle navigation</span>
  	                <span class="icon-bar"></span>
  	                <span class="icon-bar"></span>
  	                <span class="icon-bar"></span>
  	              </button>

  	            </div>


  	            <!-- Nav Starts -->
  	            <div class="navbar-collapse  collapse">
  	              <ul class="nav navbar-nav navbar-right scroll">
					  <li><a href="#trv_banner_slide"><span class="fa fa-home fa-fw"></span>&nbsp;Home</a></li>
					  <li><a href="#trv_about"><span class="fa fa-plane fa-fw"></span>&nbsp;Travelia?</a></li>
					  <li><a href="#trv_events"><span class="fa fa-television fa-fw"></span>&nbsp;UI</a></li>
					  <li><a href="#trv_timeline"><span class="fa fa-clock-o fa-fw"></span>&nbsp;Timeline</a></li>
					  <li><a href="#trv_contact"><span class="fa fa-book fa-fw"></span>&nbsp;Contact</a></li>


  	              </ul>
  	            </div>
  	            <!-- #Nav Ends -->



				  <!--

				   	<ul class="nav nav-justified">
							<li><a href="#trv_banner_slide"><span class="fa fa-home fa-fw"></span>&nbsp;Home</a></li>
							<li><a href="#trv_about"><span class="fa fa-plane fa-fw"></span>&nbsp;Travelia?</a></li>
							<li><a href="#trv_events"><span class="fa fa-television fa-fw"></span>&nbsp;UI</a></li>
							<li><a href="#trv_timeline"><span class="fa fa-clock-o fa-fw"></span>&nbsp;Timeline</a></li>
							<li><a href="#trv_contact"><span class="fa fa-book fa-fw"></span>&nbsp;Contact</a></li>
							<li><a href=""  data-toggle="modal" data-target="#login_modal"><span class="fa fa-sign-in"></span>&nbsp;Login</a></li>
						</ul>


				   -->


  	          </div>
  	        </div>

	<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js" />"> </script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" />"> </script>

	<script src="<c:url value="/resources/js/trv_script.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.validate.js" />"></script>
	<script src="<c:url value="/resources/js/additional_methods.js" />"></script>
	<script src="<c:url value="/resources/js/form_validation_msg.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.singlePageNav.min.js" />"></script>
	<script src="<c:url value="/resources/js/unslider.min.js" />"></script>

	
	<script type="text/javascript">
	//<![CDATA[
	           
	$(function() {
		
		$.validator.addMethod(
			"pw",
			function(value, element, regexp) {
				var re = new RegExp(regexp);
				return this.optional(element) || re.test(value); 
			},
			"비밀번호는 6~16자의 영문+숫자로 구성해주세요."
		);
		
		$.validator.addMethod(
			"nick",
			function(value, element, regexp) {
				var re = new RegExp(regexp);
				return this.optional(element) || re.test(value); 
			},
			"별명은 2~10자의 완성된 한글로 구성해주세요."
		);
		
		$("#sign_up").validate({
			
			errorElement: "div",
			
			rules : {
				user_email:  { 
					required: true,
					email: true
				},
				
				user_pw:     { 
					required: true, 
					pw: /^[A-z0-9]{6,16}/,
					//rangelength: [6, 16] 
				},
				
				user_pw_chk: { 
					required: true, 
					pw: /^[A-z0-9]{6,16}/,
					//rangelength: [6, 16], 
					equalTo: "#user_pw" 
				},
				
				user_nick:   { 
					required: true, 
					nick: /^[가-힣]{1}[가-힣0-9]{1,9}$/,
					rangelength: [2, 10]
				},
				
				file_input: {
					required: true,
					extension: "jpeg|jpg|png|bmp|gif"
				}
			},
			
			messages : { 
				user_email: { 
					required: "이메일을 입력해주세요." 
				},
				
				user_pw: 	{ 
					required: "비밀번호를 입력해주세요."
				    //rangelength: "비밀번호는 6~16자로 구성해주세요." 
				},
				
				user_pw_chk:{ 
					required: "비밀번호를 한번 더 입력해주세요.",
				  	//rangelength: "비밀번호는 6~16자로 구성해주세요.",
					equalTo: "처음 입력한 비밀번호와 일치하지 않습니다." 
				},
				
				user_nick:  { 
					required: "닉네임을 설정해주세요.",
				  	//rangelength: "닉네임은 2~10자로 구성해주세요."
				},
				
				file_input: {
					required: "프로필 사진을 설정해주세요."
				}
			}
		});

		$('#myPass').click(function (e) {
			var $tabs = $('.bs-example-tabs li');
			e.preventDefault();
			$tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show')
		});

		var file_size;
		
		$('#file_input').on('change', function() {
			file = this;
			console.log(file);
			
			
			file_size = ( Math.round(file.files[0].size / (1024*1024) ) );
			$('#filename').text(file.files[0].name);
			
			if( file_size > 2) {
				console.log("in if statement");
				$('#file_error').html("<i style='color: rgba(255, 0, 0, 0.5);'>파일 크기는 2mb이하여야 합니다.</i>");
				
				return false;
				
			} else {
				$('#file_error').text("");	
			}       
			
		});	
		
		$('#sign_up').submit(function() {
			if(file_size > 2) {
				file.files[0].name=" ";
				return false;
			}
		})
		
		
	});
	//]]>
	</script>
	
</body>
</html>