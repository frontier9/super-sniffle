<%@ page language="java"  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="kr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Schedule</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/schedule_add.css"/>" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

 


<div class="container-fluid">


<div class="col-md-1 side bar"></div>

<div class="col-md-11 naver_map">

<%@ include file="/WEB-INF/views/map_hybrid.jsp"%>

</div>



</div>




<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
<script src="<c:url value="/resources/js/jquery-ui.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/schedule_add.js"/>" type="text/javascript"></script>
</body>
</html>