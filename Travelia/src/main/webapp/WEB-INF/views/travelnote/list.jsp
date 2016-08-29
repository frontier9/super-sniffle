<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Conent-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/Rcss.css"/>" rel="stylesheet">
<title>Travel note</title>
</head>
<body>
<div class="travel-content">
	 <div class="container-fluid fluid-user traveltitle">
  		<h1>Travel note</h1>
  		<p>A template made by w3.css for photographers.</p>
  		<p><button class="pedding-btn" onclick="myFunction()">Toggle Grid Padding</button></p>
	 </div>


<div class ="row">
 <div id ="col-md-4-R">
 	<img src="<c:url value="/resources/images/1920x1080.90.83176-2560x1440.90.Untitled-3 copy.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/header-bg.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img_bridge.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img_gondol.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img_rocks.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img_gondol.jpg"/>" style="width:100%">
</div>

<div id = "col-md-4-R"> 
<img src="<c:url value="/resources/images/img_coffee.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img_gondol.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img_nature.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/1920x1080.90.117269-_.jpeg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/1920x1080.90.83176-2560x1440.90.Untitled-3 copy.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img_rocks.jpg"/>" style="width:100%">

</div>

<div id = "col-md-4-R">
<img src="<c:url value="/resources/images/img_rocks.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img_sound.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img1.jpg"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/profile.png"/>" style="width:100%">
 	<img src="<c:url value="/resources/images/img_rocks.jpg"/>" style="width:100%">
  </div>
  </div>
  </div>
  
<!-- Footer -->
<footer>

</footer>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="js/bootstrap.js"></script>
</body>
</html>