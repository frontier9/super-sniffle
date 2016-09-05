<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/Rcss.css"/>" rel="stylesheet">
    <title>first</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</head>
<body>
<header class="intro-header" style="background-image: url('resources/images/header-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>BOARD</h1>
                 
                        <span class="subheading">자유로운 만큼 더욱 더 예절을 지켜주시기 바랍니다.</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <div class = "container-fluid fluid-user">
	<div class = "row">
 		<div class="col-md-12">
  		  <form class="form-inline" role="search">

  			 	<select>
  				<option selected>글번호</option>
  				<option>글종류</option>
  				<option>제목</option>
  				<option>닉네임</option>
				</select>
    		     <input type="text" id="form-control" placeholder="Search">
  			     <button type="submit" class="btn btn-default">검색</button>
	  		</form>
		</div>
    </div>
    
   <div class="table-responsive"> 
	<table>
	    <colgroup>
	        <col width="30"/>
	        <col width="40"/>
	        <col width="70"/>
	        <col width="30"/>
	        <col width="20"/>
	        <col width="10"/>
	    </colgroup>
    <thead>
    <tr>
        <th scope="col">글번호</th>
        <th scope="col">글종류</th>
        <th scope="col">제목</th>
        <th scope="col">닉네임</th>
        <th scope="col">작성일</th>
        <th scope="col">조회수</th>
    </tr>
    </thead>
    <tbody>
    <c:choose>
        <c:when test="${fn:length(list) > 0}">
            <c:forEach items="${list}" var="row">
                <tr>
                    <td>${row.brd_article_no }</td>
                    <td>${row.brd_cat }</td>
                    <td>${row.brd_article_title }</td>
                    <td>${row.brd_writer }</td>
                    <td>${row.brd_article_write_date }</td>
                    <td>${row.brd_hit }</td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr>
                <td colspan="4">조회된 결과가 없습니다.</td>
            </tr>
        </c:otherwise>
    </c:choose>

    </tbody>
</table>
</div>

<div class="row">
   	<div class="col-md-4"></div>
   		<div class="col-md-4"></div>
   			<div class="col-md-4">
   		<button type="button" class="btn btn-default">
   		글쓰기
   		</button>
   	</div>
   </div>
		<div class="col-md-offset">
 		 <ul class="pagination pagination-lg">
   			 <li>
      			<a href="#" aria-label="Previous">
        		<span aria-hidden="true">&laquo;</span>
     			</a>
    		 </li>
   			 <li><a href="#">1</a></li>
    		 <li><a href="#">2</a></li>
    		 <li><a href="#">3</a></li>
    		 <li><a href="#">4</a></li>
    		 <li><a href="#">5</a></li>
    		 <li>
      		 <a href="#" aria-label="Next">
        	 <span aria-hidden="true">&raquo;</span>
      		 </a>
    		 </li>
 		 </ul>
 	   </div>
	</div>
<div class="bottom-empty">
</div>

<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
</body>
</html>