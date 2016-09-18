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

<div class="container-fluid mx">


<div class="col-md-12">
<div class="title_schedule center-block page-header">
 <h2 class="text-center">
 
 Schedule</h2>
</div>
</div>


<div class="col-md-12 lg_map">

<%@ include file="/WEB-INF/views/map_normal.jsp"%>

</div>




<div class="col-md-4">
<div class="drag_card">

<div  id="sel_city">


<ul class="nav nav-pills">
  <li role="presentation" class="active city"><h3>서울</h3></li>
  <li role="presentation" class="dropdown down">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
     	 지역선택 <span class="caret"></span>
    </a>
    <ul class="dropdown-menu">
    <li><a href="#">전체</a></li>
       <li role="separator" class="divider"></li>
     <li><a href="#">서울</a></li>
    <li><a href="#">인천</a></li>
    <li><a href="#">제주도</a></li>
     <li><a href="#">순천</a></li>    
    </ul>
  </li>
</ul>


</div>

<div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control" placeholder="여행지 검색" />
                    <span class="input-group-btn">
                        <button class="btn btn-info" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
 </div>


<div class="list-group">

  <div  class="list-group-item" id="seoul">
    
    <img src="<c:url value="/resources/images/kr1.jpg"/>" />
    
    <div class="list_contents">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
    </div>
  </div>
  
   <a href="#" class="list-group-item">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </a>
  
   <a href="#" class="list-group-item">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </a>
  
  <a href="#" class="list-group-item">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </a>
  
  <a href="#" class="list-group-item">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </a>
  
  <a href="#" class="list-group-item">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </a>
  
  <div  class="list-group-item" id="seoul">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </div>
  
  <div  class="list-group-item" id="seoul">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </div>
  
  <div  class="list-group-item" id="seoul">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </div>
  
  <div  class="list-group-item" id="seoul">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </div>
  
  <div  class="list-group-item" id="seoul">
    <h4 class="list-group-item-heading">List group item heading</h4>
    <p class="list-group-item-text">인천</p>
  </div>
  
  
</div>


</div>
</div>




<div class="col-md-8 drop_card">
<div class="table-responsive">
<table class="table table-bordered table-hover text-center">
<thead class="thead-inverse">
<tr>
<th><h4 class="text-center"><span class="glyphicon glyphicon-time" aria-hidden="true" style="font-size:25px;"></span></h4></th>
<th><h4 class="text-center"><strong>Mon</strong></h4></th>
<th><h4 class="text-center"><strong>Tue</strong></h4></th>
<th><h4 class="text-center"><strong>Wed</strong></h4></th>
<th><h4 class="text-center"><strong>Thus</strong></h4></th>
<th><h4 class="text-center"><strong>Fri</strong></h4></th>
<th><h4 class="text-center"><strong>Sat</strong></h4></th>
<th><h4 class="text-center"><strong>Sun</strong></h4></th>
</tr>
</thead>
<tr>
<td><h4>00:00 ~ 01:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>01:00 ~ 02:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>02:00 ~ 03:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>03:00 ~ 04:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>04:00 ~ 05:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>05:00 ~ 06:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>06:00 ~ 07:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>07:00 ~ 08:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>08:00 ~ 09:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>09:00 ~ 10:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>10:00 ~ 11:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>11:00 ~ 12:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>12:00 ~ 13:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>13:00 ~ 14:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>14:00 ~ 15:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>15:00 ~ 16:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>16:00 ~ 17:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><h4>17:00 ~ 18:00</h4></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</table>
</div>
</div>

</div>





<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
<script src="<c:url value="/resources/js/schedule_add.js"/>" type="text/javascript"></script>
</body>
</html>