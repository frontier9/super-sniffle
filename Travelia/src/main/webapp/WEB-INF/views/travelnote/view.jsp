<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Travelia</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/timeline.css">
    <link href="/resources/css/one-page-wonder.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>

    <!-- Full Width Image Header -->
    <header class="header-image" 
    style="background: url('/resources/images/noteImg/${noteItem.note_imgFile[0]}') no-repeat center center scroll;
    		   background-size: cover;
    		   -webkit-background-size: cover;
    		   -moz-background-size: cover;
    		   -o-background-size: cover;">
        <div class="headline">
            <div class="container">
                  <h1>${noteItem.note_title}</h1>
            </div>
        </div>
    </header>

    <!-- Page content -->
    <div class="container-fluid fluid-user">
    
    	<!--Trip  -->
        <div class="col-xs-12 col-sm-6 col-md-8 interval0">
   
     	    <hr class="featurette-divider">  
	        <div class="featurette" id="about">
	            <img class="featurette-image img-circle img-responsive pull-left img_sz" src="/resources/images/noteImg/${noteItem.note_imgFile[1]}">
	            <h2 class="featurette-heading">첫번째_
	                <span class="text-muted">${noteItem.contitle1}</span>
	            </h2>
	            <p class="lead">${noteItem.context1}</p>
	        </div>
	        
	        <hr class="featurette-divider">
       
	        <div class="featurette" id="about">
	            <img class="featurette-image img-circle img-responsive pull-left img_sz" src="/resources/images/noteImg/${noteItem.note_imgFile[2]}">
	            <h2 class="featurette-heading">두번째_
	                <span class="text-muted">${noteItem.contitle2}</span>
	            </h2>
	            <p class="lead">${noteItem.context2}</p>
	        </div>

	        <hr class="featurette-divider">
       
	        <div class="featurette" id="about">
	            <img class="featurette-image img-circle img-responsive pull-left img_sz" src="/resources/images/noteImg/${noteItem.note_imgFile[3]}">
	            <h2 class="featurette-heading">세번째_
	                <span class="text-muted">${noteItem.contitle3}</span>
	            </h2>
	            <p class="lead">${noteItem.context3}</p>
	        </div>
	        
	       <hr class="featurette-divider">
	       
	        <div class="featurette" id="about">
	            <img class="featurette-image img-circle img-responsive pull-left img_sz" src="/resources/images/noteImg/${noteItem.note_imgFile[4]}">
	            <h2 class="featurette-heading">네번째_
	                <span class="text-muted">${noteItem.contitle4}</span>
	            </h2>
	            <p class="lead">${noteItem.context4}</p>
	        </div>
       </div>        
      
            
        <div class="col-xs-12 col-md-4">

            <div class="row">
                <h2>Timeline</h2>
                <div class="timeline timeline-single-column">
                
              
                    <div class="timeline-item">
                        <div class="timeline-point">
                            <i><strong>1</strong></i>
                        </div>
                        <div class="timeline-event">
                            <div class="timeline-heading">
                                <h4>${noteItem.timetitle1}</h4>
                            </div>
                            <div class="timeline-body">
                                <p>${noteItem.timetext1}</p>
                            </div>
                            <div class="timeline-footer">
                                <p class="text-right">Sep-22-2016</p>
                            </div>
                        </div>
                    </div>
                 

                      
                    <div class="timeline-item">
                        <div class="timeline-point">
                            <i><strong>2</strong></i>
                        </div>
                        <div class="timeline-event">
                            <div class="timeline-heading">
                                <h4>${noteItem.timetitle2}</h4>
                            </div>
                            <div class="timeline-body">
                                 <p>${noteItem.timetext2}</p>
                            </div>
                            
                            <div class="timeline-footer">
                               <p class="text-right">Sep-22-2016</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="timeline-item">
                        <div class="timeline-point">
                             <i><strong>3</strong></i>
                        </div>
                        <div class="timeline-event">
                            <div class="timeline-heading">
                                <h4>${noteItem.timetitle3}</h4>
                            </div>
                            <div class="timeline-body">
                               <p>${noteItem.timetext3}</p>
                            </div>
                            
                            <div class="timeline-footer">
                                <p class="text-right">Sep-22-2016</p>
                            </div>
                        </div>
                    </div>

                
         			<div class="timeline-item">
                        <div class="timeline-point">
                            <i><strong>4</strong></i>
                        </div>
                        <div class="timeline-event">
                            <div class="timeline-heading">
                                <h4>${noteItem.timetitle4}</h4>
                            </div>
                            <div class="timeline-body">
                               <p>${noteItem.timetext4}</p>
                            </div>
                            
                            <div class="timeline-footer">
                                <p class="text-right">Sep-22-2016</p>
                            </div>
                        </div>
                    </div>
                                                                                                                                                                                                                                       
                    
                </div>
            </div>
        </div>
 
       
        
        
    </div>
    
    <!-- /.container -->
    
    
     <!-- comment -->

    <div class="container">
            <div class="row">

                <div class="col-md-12">

                   <div class="form-group page-header">

                     <h1>Comments</h1>

                     <textarea class="form-control" rows="3"></textarea>

                     <form class="form-inline">
                    <button class="btn btn-info pull-right" type="submit" id="cbtn">등록하기</button>
                    <h3>45 comments</h3>
                    </form>

                  </div>

                   <div class="comments-list">
                       <div class="media">
                           <p class="pull-right"><small>5 days ago</small></p>
                            <a class="media-left" href="#">
                              <img src="/resources/images/ronaldo.png" class="com_img_size">
                            </a>
                            <div class="media-body">

                              <h4 class="media-heading user_name">호날두</h4>
                           	       멋있네요!!


                                <p><small><a href="">삭제</a></small></p>
                            </div>
                          </div>
                       <div class="media">
                           <p class="pull-right"><small>5 days ago</small></p>
                            <a class="media-left" href="#">
                              <img src="/resources/images/ronaldo.png" class="com_img_size">
                            </a>
                            <div class="media-body">

                              <h4 class="media-heading user_name">호날두</h4>
                           	          멋있네요!!


                                <p><small><a href="">삭제</a></small></p>
                            </div>
                          </div>
                       <div class="media">
                           <p class="pull-right"><small>5 days ago</small></p>
                            <a class="media-left" href="#">
                              <img src="/resources/images/ronaldo.png" class="com_img_size">
                            </a>
                            <div class="media-body">

                              <h4 class="media-heading user_name">호날두</h4>
                             	  멋있네요!!


                                 <p><small><a href="">삭제</a></small></p>
                            </div>
                          </div>
                       <div class="media">
                           <p class="pull-right"><small>5 days ago</small></p>
                            <a class="media-left" href="#">
                              <img src="/resources/images/ronaldo.png" class="com_img_size">
                            </a>
                            <div class="media-body">

                              <h4 class="media-heading user_name">호날두</h4>
                                                                         멋있네요!!

                                 <p><small><a href="">삭제</a></small></p>
                            </div>
                          </div>


                   </div>

                 <div class="more_comments">
                   <p class="text-center">
                     <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                        	  더보기
                     </p>
                   </div>



                </div>
            </div>
        </div>

<%@ include file="/WEB-INF/include/navbar-md.jsp"%>

</body>
</html>