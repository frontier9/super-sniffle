<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="kr">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행의 시작 Travelia</title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-3.3.7.min.css'/>">
<link rel="stylesheet" href="<c:url value="/resources/css/write.css"/>" >
<script src="<c:url value='/resources/js/jquery-2.2.4.min.js'/>"></script>
<script src="<c:url value='/resources/js/bootstrap-3.3.7.min.js'/>"></script>
</head>
<body>





<%--container starts--%>
<div class="container-fluid fluid-usr">
    <div class="header">
        <h2><span class="glyphicon glyphicon-pencil"></span>노트작성</h2>
    </div>

<%--form starts--%>
<form class="form-horizontal" role="form" method="post" action="write" enctype="multipart/form-data">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <%--main image starts--%>
    <div class="form-group">
    	<input type="text" class="form-control title" name="note_title" placeholder="제목을 입력해 주세요."/>
        <div class="col-md-12  main_img" >       	
            <img src="<c:url value="/resources/images/plus.png"/>" class="center-block" style="width:35px; height:35px;" id="new_img">
            <h3 class="text-center">메인 이미지를 등록해 주세요.</h3>
        </div>
        <input type="file" id="my_file" name="note_img[0]" style="display: none;"/>
    </div>
    <%--main image ends--%>



    <%--note & timeline start--%>
    <div class="form-group" id="work">
        <%--note starts--%>
        <div class="col-md-7  note_wt" id="work1">

            <%--first note--%>
          <div class="row">
            <div class="col-md-3">
                <img src="<c:url value="/resources/images/plus2.png"/>" style="width:150px; height:150px;" id="nt_img1" class="img-circle"/>
            </div>
            <div class="col-md-9">
                <input type="text" class="form-control title" name="contitle1" placeholder="제목을 입력해 주세요.">
                <textarea class="form-control" rows="6"  style="width:100%;" placeholder="여행 일지를 작성해 주세요." name="context1">
                </textarea>
            </div>
            <input type="file" id="note1" name="note_img[1]" style="display: none;"/>
          </div>

        <%--second note--%>
      <div class="row wt">
          <div class="col-md-3">
              <img src="<c:url value="/resources/images/plus2.png"/>" style="width:150px; height:150px;" id="nt_img2" class="img-circle"/>
         </div>
         <div class="col-md-9">
            <input type="text" class="form-control title" name="contitle2" placeholder="제목을 입력해 주세요."/>
            <textarea class="form-control" rows="6"  style="width:100%;" placeholder="여행 일지를 작성해 주세요." name="context2"></textarea>
        </div>
        <input type="file" id="note2" name="note_img[2]" style="display: none;"/>
      </div>

        <%--third note--%>
      <div class="row wt">
         <div class="col-md-3">
             <img src="<c:url value="/resources/images/plus2.png"/>"style="width:150px; height:150px;" id="nt_img3" class="img-circle"/>
         </div>
         <div class="col-md-9">
            <input type="text" class="form-control title" name="contitle3" placeholder="제목을 입력해 주세요.">
            <textarea class="form-control" rows="6"  style="width:100%;" placeholder="여행 일지를 작성해 주세요." name="context3"></textarea>
        </div>
        <input type="file" id="note3" name="note_img[3]" style="display: none;"/>
      </div>



        </div>
        <%--note ends--%>

        <%--timeline starts--%>
        <div class="col-md-5 wt" id="time_wt">
            <%--first timeline starts--%>
           <div class="row">
                <div class="col-md-12">
                    <input type="text" class="form-control title" placeholder="제목을 입력해 주세요." name="timetitle1">
                    <textarea class="form-control" rows="6"  style="width:100%;" placeholder="타임라인을 작성해 주세요." name="timetext1" ></textarea>
                </div>
           </div>
            <%--first timeline ends--%>

            <%--second timeline starts--%>
           <div class="row time_note">
               <div class="col-md-12">
                   <input type="text" class="form-control title" placeholder="제목을 입력해 주세요." name="timetitle2">
                   <textarea class="form-control" rows="6"  style="width:100%;" placeholder="타임라인을 작성해 주세요." name="timetext2" ></textarea>
               </div>
           </div>
            <%--second timeline ends--%>

            <%--third timeline starts--%>
           <div class="row time_note">
               <div class="col-md-12">
                    <input type="text" class="form-control title" placeholder="제목을 입력해 주세요." name="timetitle3">
                    <textarea class="form-control" rows="6"  style="width:100%;" placeholder="타임라인을 작성해 주세요." name="timetext3" ></textarea>
               </div>
           </div>
            <%--third timeline ends--%>


        </div>
        <%--timeline ends--%>

    </div>
    <%--note & timeline end--%>

    <%--add & submit starts--%>
    <div class="form-group">
        <div class="col-sm-offset-5 col-sm-10 bt_end">
            <button type="button" class="btn btn-default" id="note_add">추가하기</button>
            <button type="button" class="btn btn-default" id="note_del">삭제하기</button>
            <button type="submit" class="btn btn-default">작성완료</button>
         </div>
     </div>
    <%--add & submit ends--%>

    </form>
    <%--end form--%>

</div>
<%--container ends--%>
<footer>
<h5>@travelia</h5>
</footer>

<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
<script type="text/javascript" src="<c:url value="/resources/js/test.js"/>" charset="utf-8" ></script>


</body>
</html>