<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/include/include-header.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/Rcss.css"/>" rel="stylesheet">
    <%@ include file="/WEB-INF/include/include-header.jsp"%>
    <sec:csrfMetaTags/>
</head>
	<body>
		<header class="intro-header" style="background-image: url('/resources/images/제목 없음1231.png')">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
	                    <div class="site-heading">
	                        <h1 class ="board-h1">BOARD</h1>
	    
	                        <span class="subheading">자유로운 만큼 더욱 더 예절을 지켜주시기 바랍니다.</span>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </header>
	    
	    <div class = "container-fluid fluid-user">

		<div class="editor">
   		 <form id="frm" class="form-horizontal">
   		 
				   		  <!--   <div class="form-group">
				 		<label for = "inputPassword" class="col-sm-2 control-label">글 분류</label>
				 		<div class="col-sm-10">
				 		<select>
				  				<option selected>Q&A</option>
				  				<option>TIP</option>
				  				<option>ETC</option>
								</select>
				 		</div>
				 	</div>
				   	<div class="form-group">
				 	<label for = "inputPassword" class="col-sm-2 control-label">제목</label>
				 	<div class="col-sm-6">
                    <input type="text" id="inputPassword" name="title" class="form-control"/>  
                    </div>
        			</div>
        			
        			
        			<label for="comment">Comment:</label>
                    <textarea class= "writearea"title="내용" id="contents" name="contents" ></textarea>
                    -->
                      
				 	
				
				 	<div class="form-group">
				 		<label for = "inputPassword" class="col-sm-2 control-label">카테고리</label>
				 		<div class="col-sm-10">
				 		<select>
				  				<option selected>Q&A</option>
				  				<option>TIP</option>
				  				<option>ETC</option>
								</select>
				 		</div>
				 	</div>
				 	<div class="form-group">
				 	<label for = "inputPassword" class="col-sm-2 control-label">제목</label>
				 	<div class="col-sm-6">
				 	<input type="text" id="inputPassword" name="title" class="form-control">
				 	</div>
				 	</div>
								 	
				 	<div class="form-group">
					 	<label for = "inputPassword" class="col-sm-2 control-label">내용</label>
					 	<div class="col-sm-6">
					 			<textarea class="form-control" rows="10" id="contents" name="contents">
					  			
					  			</textarea>
					 	</div>
					 	</div>
	 	
                    
			        
			   		<div class="col-sm-3"></div>
			   		<div class="col-sm-2"></div>
			   		<div class="col-sm-2"></div>
			   		<div class="col-sm-3">		
			         <a href="#this" class="btn btn-default" id="list">목록</a>
			       		 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			         <a href="#this" class="btn btn-default" id="write">확인</a>
			        </div>
			        
    </form>
</div>
</div>
    <div class="bottom-empty">
	</div> 
    <%@ include file="/WEB-INF/include/include-body.jsp"%>
    <%@ include file="/WEB-INF/include/navbar-md.jsp"%>

<script type="text/javascript">
//<![CDATA[
    $(document).ready(function() {
        $('#list').on('click', function (e) {
            e.preventDefault();
            e.stopPropagation();
            fn_openBoardList();
        });

        $('#write').on('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            fn_insertBoard();
        });
    });

    function fn_openBoardList() {
        console.log("in position");
        //var submit = new ComSubmit();
        
        //submit.setUrl("<c:url value='/board/board' />");
        location.href="/board/board";
        //submit.submit();
    }

    function fn_insertBoard() {
        var submit = new ComSubmit('frm');
        var csrf_param = $("meta[name='_csrf_parameter']").attr('content');
        var csrf_token = $("meta[name='_csrf']").attr('content');
        submit.setUrl("<c:url value='/board/insertBoard.do' />");
        submit.submit(csrf_param, csrf_token);
    }
//]]>
</script>
</body>
</html>