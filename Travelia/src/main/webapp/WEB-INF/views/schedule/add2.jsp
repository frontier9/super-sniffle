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
<link rel="stylesheet" href="<c:url value="/resources/css/add2.css"/>" >
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-datetimepicker.css"/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<c:url value="/resources/js/moment.min.js"/>" ></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js"/>" ></script>
</head>
<body>
<%@ include file="/WEB-INF/views/map_hybrid.jsp"%>

<!-- date box -->
<div id="date-box">

<div class="text-center" id="date-text">

<p> 2016 9/15 ~ 9/20</p>
</div>

<div id="box-all">

<div class="box-dt">

<div class="day_pos">

<h4>Day2</h4>
<h5>9/16</h5>
</div>

<div class="reg_pos">

<p>토요일</p>
<p>인천</p>

</div>
</div>

<div class="box-dt">
<div class="day_pos" >

<h4>Day1</h4>
<h5>9/17</h5>
</div>

<div class="reg_pos">

<p>금요일</p>
<p>인천</p>

</div>
</div>


<div class="box-dt">
<div class="day_pos" >

<h4>Day1</h4>
<h5>9/18</h5>
</div>

<div class="reg_pos">

<p>금요일</p>
<p>인천</p>

</div>
</div>



<div class="box-dt">
<div class="day_pos" >

<h4>Day1</h4>
<h5>9/19</h5>
</div>

<div class="reg_pos">

<p>금요일</p>
<p>인천</p>

</div>
</div>



</div>

<div id="day_footer">
</div>

</div>
 <!-- date end -->


 <!-- drop div -->
 
 <div id="drop_land">
 
 <div class="drop_head text-center">
 <h5>Day1 9/16 금요일</h5>
 <button class="btn btn-default btn-sm" id="view" type="submit">등록하기</button>
 
 </div>
 
 <div class="drop_content">
 
 
 </div>
 
 <div class="drop_footer text-center">

 </div>
 
 </div>
<!-- drop div end-->
 
 
 
 <!-- Sidebar -->
 <div id="sidebar-wrapper">
            <div id="side_head">
              <h3 class="text-center">대한민국</h3>
              
            </div>
           
           <div id="side_list">
               

            

            

            </div>

            

       <div class="list_footer">

       </div>
       
</div>
 <!-- Sidebar end -->





<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
<script src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/add2.js"/>" type="text/javascript"></script>

</body>
</html>