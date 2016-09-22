<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>여행의 시작 Travelia</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-3.3.7.min.css'/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/profile.css"/>">
  <script src="<c:url value='/resources/js/jquery-2.2.4.min.js'/>"> </script>
  <script src="<c:url value='/resources/js/bootstrap-3.3.7.min.js'/>"> </script>
</head>
<body>

<div class="col-xs-12 col-md-4 col-md-offset-4">
<div class="panel panel-info profile-all">
  <div class="panel-heading text-center "><h4>Profile</h4></div>

      <div class="panel-body  profile-inner">

  <form class="text-center filebox preview-image"  name = "form">

  <div class="firstone">
    <img src="<c:url value="/resources/images/avatar.jpg" />" class="img-thumbnail"  alt="Your Avatar" style="width:160px" id="normal"/><h6 class="text-muted">이미지 눌러서 사진을 등록하세요.</h6>

  </div>

   
    <input type="file" id="input-file" class="upload-hidden" name = "aFile" style="display: none;"/>
    

  </form>

   <div class= "col-md-12">
   <h4><span class="label label-info">닉네임</span>crazygogo</h4>
   </div>

   <div class= "col-md-12">
   <h4><span class="label label-info">E-mail</span>wonbin@naver.com</h4>
   </div>

  <div class= "col-md-12">
  <h4> <span class="label label-info">자기소개</span></h4>
 <h4>
      자다 일어나서 찍은 사진 입니더 같이 여행가요~~
 </h4>

   </div>

   <div class= "col-md-12">
   <h4><span class="label label-info">일정목록</span></h4>
   <a class="note" href="#">여행일지1</a>
   <a class="note" href="#">여행일지2</a>
   <a class="note" href="#">여행일지3</a>
   </div>

    <div class= "col-md-12">
         <button class="btn btn-default pps" type="submit"  data-toggle="modal" data-target="#pwdmodal">비밀번호 변경</button>
           <button class="btn btn-default pps" type="submit">수정하기</button>
    </div>
    
    <div class="modal fade" id="pwdmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="exampleModalLabel">비밀번호 변경</h4>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="now-pwd" class="control-label">현재 비밀번호</label>
              <input type="text" class="form-control" id="now-pwd">
            </div>
            <div class="form-group">
              <label for="new-pwd" class="control-label">변경 비밀번호</label>
              <input type="text" class="form-control" id="new-pwd">
            </div>
            <div class="form-group">
              <label for="pwd-cf" class="control-label">비밀번호 확인</label>
              <input type="text" class="form-control" id="pwd-cf">
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
          <button type="button" class="btn btn-primary">변경</button>
        </div>
      </div>
    </div>
  </div>
    

  </div>

</div>

</div>
<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
<script type="text/javascript" src="<c:url value="/resources/js/click.js"/>" ></script>
</body>
</html>