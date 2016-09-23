<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<sec:authorize access="! isAuthenticated()">
 <script>
 	alert("로그인을 해주세요");
 	location.href="/";
 </script>	
</sec:authorize>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<c:url value="/resources/css/detail.css"/>" >
<link rel="stylesheet" href="<c:url value="/resources/fonts/glyphicons-halflings-regular.ttf"/>">
<title>여행의 시작 Travelia</title>
</head>
<body style =background:#f8f8fa;>

	<div class="container-fluid mx">
		<div class="main_img">
		
			<div class="user_box">
				<div class ="f1" style="margin-right:10px">
					<img src="http://www.earthtory.com/res/img/common/mobile/img_profile.png" alt class="puser_img">
				</div>
				<div class="user_name">정동원</div>
					<div class="header_title">경주 불국사로 떠나자~~
						<div class="datetime"> 2016.09.12 ~ 2016.09.15 (3일)</div>
					</div>
				</div>
				<div class="clear"></div>				
			</div>
			
			<div class="day_box">
				<div class="day_info_box">
				 <div class="day_txt">DAY1</div>
					<div class="day_info">
						<div class="day_info_left">
							<div class="date">2016.09.19 (화)</div>
							<div class="day_title">서울</div>
						</div>
						<div class="day_info_right" style="display:none;"></div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			
			
			<div class="day_sch_box">
				<div class="day_sch_num">
					<div class="sch_num">1</div>
				</div>
				<div class="sch_content">
					<img src="/resources/images/Bulguksa.png" alt class="spot_img">
					 <div class="spot_content_box">
					 	<div class="spot_name">
					 		경주 불국사
					 	</div>
					 		<div class="spot_info"> <span class="glyphicon glyphicon-map-marker" aria-hidden="true">경상북도 경주시 진현동 15</span> </div>
					 		<div class="btn_phone"> <span class="glyphicon glyphicon-earphone" aria-hidden="true"> 054-746-9913</span> </div>
					 	<div class="clear">
					 	</div>
					 	
			   		 </div>
					 	<div class="spot_btn_box">
					 		<img src="http://www.earthtory.com/res/img/mypage/plan/sub/info_ico.png" alt class="spot_btn map view">
					 		<div class="clear">
					 		</div>
					 	</div>
				</div>
					<div class="clear"></div>
			</div>
			
			<div class="day_empty">
			<img src="http://www.earthtory.com/res/img/mypage/plan/sub/distance_line.gif">
			</div>
			</div>
			<div class="clear"></div>
			
			
			
	     <div class="day_box sch_two" >
			<div class="day_sch_box">
				<div class="day_sch_num">
					<div class="sch_num">2</div>
				</div>
				<div class="sch_content">
					<img src="/resources/images/Bulguksa.png" alt class="spot_img">
					 <div class="spot_content_box">
					 	<div class="spot_name">
					 		경주 불국사
					 	</div>
					 	<div class="spot_info"> <span class="glyphicon glyphicon-map-marker" aria-hidden="true">경상북도 경주시 진현동 15</span> </div>
					 		<div class="btn_phone"> <span class="glyphicon glyphicon-earphone" aria-hidden="true"> 054-746-9913</span> </div>
					 	<div class="clear">
					 	</div>
					 		
					 	</div>
			   
					 	<div class="spot_btn_box">
					 		<img src="http://www.earthtory.com/res/img/mypage/plan/sub/info_ico.png" alt class="spot_btn map view">
					 		<div class="clear">
					 		</div>
					 	</div>
					 </div>
					<div class="clear"></div>
			</div>
			
			<div class="day_empty">
			<img src="http://www.earthtory.com/res/img/mypage/plan/sub/distance_line.gif">
			</div>
			
			</div>
			
			<div class="day_box">
			<div class="day_info_box">
				 <div class="day_txt">DAY2</div>
					<div class="day_info">
						<div class="day_info_left">
							<div class="date">2016.09.20 (수)</div>
							<div class="day_title">서울</div>
						</div>
						<div class="day_info_right" style="display:none;"></div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			
			
			<div class="day_sch_box">
				<div class="day_sch_num">
					<div class="sch_num">1</div>
				</div>
				<div class="sch_content">
					<img src="/resources/images/Bulguksa.png" alt class="spot_img">
					 <div class="spot_content_box">
					 	<div class="spot_name">
					 		경주 불국사
					 	</div>
					 	<div class="spot_info"> <span class="glyphicon glyphicon-map-marker" aria-hidden="true">경상북도 경주시 진현동 15</span> </div>
					 		<div class="btn_phone"> <span class="glyphicon glyphicon-earphone" aria-hidden="true"> 054-746-9913</span> </div>
					 	<div class="clear">
					 	</div>
			  		 </div>
					 	<div class="spot_btn_box">
					 		<img src="http://www.earthtory.com/res/img/mypage/plan/sub/info_ico.png" alt class="spot_btn map view">
					 		<div class="clear">
					 		</div>
					 	</div>
					 </div>
					<div class="clear"></div>
			</div>
			
			<div class="day_empty">
			<img src="http://www.earthtory.com/res/img/mypage/plan/sub/distance_line.gif">
			</div>
			
			</div>
			
			
			<div class="day_box">
			<div class="day_info_box">
				 <div class="day_txt">DAY3</div>
					<div class="day_info">
						<div class="day_info_left">
							<div class="date">2016.09.21 (목)</div>
							<div class="day_title">서울</div>
						</div>
						<div class="day_info_right" style="display:none;"></div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			
			
			<div class="day_sch_box">
				<div class="day_sch_num">
					<div class="sch_num">1</div>
				</div>
				<div class="sch_content">
					<img src="/resources/images/Bulguksa.png" alt class="spot_img">
					 <div class="spot_content_box">
					 	<div class="spot_name">
					 		경주 불국사
					 	</div>
					 	<div class="spot_info"> <span class="glyphicon glyphicon-map-marker" aria-hidden="true">경상북도 경주시 진현동 15</span> </div>
					 		<div class="btn_phone"> <span class="glyphicon glyphicon-earphone" aria-hidden="true"> 054-746-9913</span> </div>
					 	<div class="clear">
					 	</div>
			   		</div>
					 	<div class="spot_btn_box">
					 		<img src="http://www.earthtory.com/res/img/mypage/plan/sub/info_ico.png" alt class="spot_btn map view">
					 		<div class="clear">
					 		</div>
					 	</div>
					 </div>
					<div class="clear"></div>
			</div>
			
			</div>
			
	</div>
<%@ include file="/WEB-INF/include/navbar-md.jsp"%>

</body>
</html>