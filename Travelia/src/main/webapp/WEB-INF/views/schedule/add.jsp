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
   <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-datetimepicker.css"/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="<c:url value="/resources/js/moment.min.js"/>" ></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js"/>" ></script>

</head>
<body>


<%@ include file="/WEB-INF/views/map_hybrid.jsp"%>



<div class="modal-content sch" id="see" style="display:none;">

      <div class="modal-header modal-header-success">
      
          <div class="head-left">
         <h3 class="modal-title">여행도시</h3>
         </div>
         
         <div class="head-right">
        <h5> <span class="glyphicon glyphicon-calendar start" aria-hidden="true"></span>출발일</h5>
         
     <div id="calren">   
     
    <div class=" glyphicon glyphicon-triangle-top tri" aria-hidden="true"></div> 
   <div style="overflow:hidden;" id="date_pick">
    <div class="form-group">
        <div class="row">
            <div class="col-md-12">
                <div id="datetimepicker12"></div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
       
       jQuery.noConflict();
        $(function () {
         
            $('#datetimepicker12').datetimepicker({
                inline: true
               
            })(jQuery);
        });
    </script>
</div>
  </div>        
        
    
       
        </div>
         
      </div>
      
      <div class="modal-body sch-body">
        
     
        
      </div>
      
      
      
      
      <div class="modal-footer">
        <button type="button" class="btn btn-success remodal" data-toggle="modal" data-target="#myModal" >상세일정</button>
        <button type="button" class="btn btn-default exit">닫기</button>
      </div>
  </div><!-- /.modal-content -->
   
   
   

<!--last Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"  >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">여행계획 세우기</h4>
      </div>
      <div class="modal-body">
      
      
      
      </div>
      <div class="modal-footer">
       
        <button type="button" class="btn btn-primary">완료</button>
      </div>
    </div>
  </div>
</div>
   
    



<%@ include file="/WEB-INF/include/navbar-md.jsp"%>


<script src="<c:url value="/resources/js/schedule_add.js"/>" type="text/javascript"></script>
<script>


/*$(".remodal").on("click",function(){
	
	$("#myModal").css("display", "block");
	
});*/

</script>

</body>
</html>