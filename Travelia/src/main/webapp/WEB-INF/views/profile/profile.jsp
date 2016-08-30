<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
  <link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/profile.css"/>">
  <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js" />"> </script>
  <script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" />"> </script>
</head>
<body>

<div class="col-xs-12 col-md-4 col-md-offset-4">
<div class="panel panel-info profile-all">
  <div class="panel-heading text-center "><h4>Profile</h4></div>

      <div class="panel-body  profile-inner">

    <form class="text-center filebox preview-image"  name = "form">

  <div class="firstone">
    <img src="<c:url value="/resources/images/avatar.jpg" />" class="img-thumbnail, nm_img"  alt="Your Avatar" style="width:160px"/><h6 class="text-muted">upload image</h6>

  </div>

    <label for="input-file" class="btn btn-default" type="button" >등록</label>
    <input type="file" id="input-file" class="upload-hidden" name = "aFile">
    <input type="button" class="btn btn-default cancel" value="취소">

  </form>

   <div class= "col-md-12">
   <h4><span class="label label-info">닉네임</span> portugal</h4>
   </div>

   <div class= "col-md-12">
   <h4><span class="label label-info">E-mail</span> wimo1@daum.net</h4>
   </div>

  <div class= "col-md-12">
  <h4> <span class="label label-info">자기소개</span></h4>
  <textarea class="form-control" rows="3"></textarea>

   </div>

   <div class= "col-md-12">
   <h4><span class="label label-info">일정목록</span></h4>
   <a class="note" href="#">여행일지1</a>
   <a class="note" href="#">여행일지2</a>
   <a class="note" href="#">여행일지3</a>
   </div>

    <div class= "col-md-12">
         <button class="btn btn-default pps" type="submit">비밀번호 변경</button>
           <button class="btn btn-default pps" type="submit">수정완료</button>
    </div>

  </div>

</div>

</div>

<script type="text/javascript" src="<c:url value="js/click.js"/>" ></script>
</body>
</html>