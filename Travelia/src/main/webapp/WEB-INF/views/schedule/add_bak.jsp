<%@ page language="java"  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="kr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>여행의 시작 Travelia</title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-3.3.7.min.css'/>">
<link rel="stylesheet" href="<c:url value="/resources/css/schedule_add.css"/>" >
<script type="text/javascript" src="<c:url value='/resources/js/jquery-2.2.4.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/bootstrap-3.3.7.min.js'/>"></script>
</head>
<body>

<%@ include file="/WEB-INF/views/map_hybrid.jsp"%>

<!-- Sidebar -->
 <div id="sidebar-wrapper">
            <div id="side_head">
              <h3 class="text-center">대한민국</h3>
            </div>
<<<<<<< Updated upstream
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
   
    
=======
            
            <div id="side_list">
              
              <div class="reg">
                
                <div class="list_img">
                <img src="<c:url value="/resources/images/kr1.jpg"/>">    
                </div>
                
                <div class="list_text">
                 <h4>서울</h4>
                 <h5>seoul </h5>
                 </div>
                 
              </div>
              
              
               <div class="reg">
                
                <div class="list_img">
                <img src="<c:url value="/resources/images/kr1.jpg"/>">    
                </div>
                
                <div class="list_text">
                 <h4>서울</h4>
                 <h5>seoul </h5>
                 </div>
                 
              </div>
              
              
               <div class="reg">
                
                <div class="list_img">
                <img src="<c:url value="/resources/images/kr1.jpg"/>">    
                </div>
                
                <div class="list_text">
                 <h4>서울</h4>
                 <h5>seoul </h5>
                 </div>
                 
              </div>
              
              
               <div class="reg">
                
                <div class="list_img">
                <img src="<c:url value="/resources/images/kr1.jpg"/>">    
                </div>
                
                <div class="list_text">
                 <h4>서울</h4>
                 <h5>seoul </h5>
                 </div>
                 
              </div>
              
               <div class="reg">
                
                <div class="list_img">
                <img src="<c:url value="/resources/images/kr1.jpg"/>">    
                </div>
                
                <div class="list_text">
                 <h4>서울</h4>
                 <h5>seoul </h5>
                 </div>
                 
              </div>
              
               <div class="reg">
                
                <div class="list_img">
                <img src="<c:url value="/resources/images/kr1.jpg"/>">    
                </div>
                
                <div class="list_text">
                 <h4>서울</h4>
                 <h5>seoul </h5>
                 </div>
                 
              </div>
              
               <div class="reg">
                
                <div class="list_img">
                <img src="<c:url value="/resources/images/kr1.jpg"/>">    
                </div>
                
                <div class="list_text">
                 <h4>서울</h4>
                 <h5>seoul </h5>
                 </div>
                 
              </div>
              
               <div class="reg">
                
                <div class="list_img">
                <img src="<c:url value="/resources/images/kr1.jpg"/>">    
                </div>
                
                <div class="list_text">
                 <h4>서울</h4>
                 <h5>seoul </h5>
                 </div>
                 
              </div>
            
            
            </div>
            
            <div class="list_footer">
            
            
            </div>
         </div>
>>>>>>> Stashed changes



<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
<script src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/schedule_add.js"/>" type="text/javascript"></script>
</body>
</html>