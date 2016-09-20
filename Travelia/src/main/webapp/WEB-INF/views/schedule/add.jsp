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
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script>
</head>
<body>


<%@ include file="/WEB-INF/views/map_hybrid.jsp"%>



<div class="modal-content sch" id="see">

      <div class="modal-header modal-header-success">
         <span class="glyphicon glyphicon-calendar start" aria-hidden="true"> 출발일</span>
        <h4 class="modal-title">여행도시</h4>
      </div>
      
      <div class="modal-body">
        
        <div class="sel_city">
          
        
          <span class="glyphicon glyphicon-remove-circle cen_line"></span>
          
          <div class="sel_text">
          <h4>
          	서울
          </h4>
          </div>
          
          <div class="input-group input-group-sm ip_gr">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number1" disabled="disabled" data-type="minus" data-field="quant[1]">
                  <span class="glyphicon glyphicon-minus"></span>
              </button>
          </span>
          
         <input type="text" class="form-control input-number" name="quant[1]" placeholder="Username" aria-describedby="sizing-addon3" value="1" min="1" max="100">
          
          <span class="input-group-btn">
              <button type="button" class="btn btn-default  btn-number1" data-type="plus" data-field="quant[1]">
                  <span class="glyphicon glyphicon-plus"></span>
              </button>
          </span>
      </div>
        </div>
        
         <span class="glyphicon glyphicon-option-vertical line" aria-hidden="true"></span>
         
               <div class="sel_city">
          
        
          <span class="glyphicon glyphicon-remove-circle cen_line"></span>
          
          <div class="sel_text">
          <h4>
          	인천광역시
          </h4>
          </div>
          
          <div class="input-group input-group-sm ip_gr">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number2" disabled="disabled" data-type="minus" data-field="quant[2]">
                  <span class="glyphicon glyphicon-minus"></span>
              </button>
          </span>
          
         <input type="text" class="form-control input-number" name="quant[2]" placeholder="Username" aria-describedby="sizing-addon3" value="1" min="1" max="100">
          
          <span class="input-group-btn">
              <button type="button" class="btn btn-default  btn-number2" data-type="plus" data-field="quant[2]">
                  <span class="glyphicon glyphicon-plus"></span>
              </button>
          </span>
      </div>
        </div>
        
      </div>
      
      
      
      
      <div class="modal-footer">
        <button type="button" class="btn btn-success">상세일정</button>
        <button type="button" class="btn btn-default">닫기</button>
      </div>
  </div><!-- /.modal-content -->




<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
<script src="<c:url value="/resources/js/jquery-ui.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/schedule_add.js"/>" type="text/javascript"></script>
</body>
</html>