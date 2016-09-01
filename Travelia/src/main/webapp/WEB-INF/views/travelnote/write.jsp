<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="kr">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Travel note</title>
<link rel="stylesheet" href="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/write.css"/>" >
<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"/>"></script>
<script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>"></script>
</head>
<body>





<div class="container-fluid fluid-usr">

<div class="header">
<h2>

<span class="glyphicon glyphicon-pencil"></span>
노트작성
</h2>

</div>

<form class="form-horizontal" role="form">

<div class="form-group">
<div class="col-md-12 main_img">
<img src="<c:url value="/resources/images/plus.png"/>" class="center-block" style="width:35px; height:35px;" id="new_img">
<h3 class="text-center">메인 이미지를 등록해 주세요.</h3>
</div>
<input type="file" id="my_file" name="img0" style="display: none;"/>
</div>

<div class="form-group">
<div class="col-md-7 note_wt">


      <div class="row">
      <div class="col-md-3">
      <img src="<c:url value="/resources/images/plus2.png"/>" style="width:150px; height:150px;" id="nt_img1" class="img-circle"/>
      </div>
      <div class="col-md-9">
      <input type="text" class="form-control title" name="title0" placeholder="제목을 입력해 주세요.">
      <textarea class="form-control" rows="6"  style="width:494.25px;" placeholder="여행 일지를 작성해 주세요." name="nt0"></textarea>
      </div>
      <input type="file" id="note1" name="img1" style="display: none;"/>
      </div>


      <div class="row wt">
      <div class="col-md-3">
      <img src="<c:url value="/resources/images/plus2.png"/>" style="width:150px; height:150px;" id="nt_img2" class="img-circle"/>
      </div>
      <div class="col-md-9">
      <input type="text" class="form-control title" name="title1" placeholder="제목을 입력해 주세요."/>
      <textarea class="form-control" rows="6"  style="width:494.25px;" placeholder="여행 일지를 작성해 주세요." name="nt1"></textarea>
      </div>
      <input type="file" id="note2" name="img2" style="display: none;"/>
      </div>

      <div class="row wt">
      <div class="col-md-3">
      <img src="<c:url value="/resources/images/plus2.png"/>"style="width:150px; height:150px;" id="nt_img3" class="img-circle"/>
      </div>
      <div class="col-md-9">
      <input type="text" class="form-control title" name="title2" placeholder="제목을 입력해 주세요.">
      <textarea class="form-control" rows="6"  style="width:494.25px;" placeholder="여행 일지를 작성해 주세요." name="nt2"></textarea>
      </div>
      <input type="file" id="note3" name="img3" style="display: none;"/>
      </div>



</div>

<div class="col-md-5 wt" id="time_wt">

       <div class="row">
       <div class="col-md-12">
       <input type="text" class="form-control title" placeholder="제목을 입력해 주세요." name="time_title0">
       <textarea class="form-control" rows="6"  style="width:470px;" placeholder="타임라인을 작성해 주세요." name="time0" ></textarea>
       </div>
       </div>

	   <div class="row time_note">
       <div class="col-md-12">
        <input type="text" class="form-control title" placeholder="제목을 입력해 주세요." name="time_title1">
       <textarea class="form-control" rows="6"  style="width:470px;" placeholder="타임라인을 작성해 주세요." name="time1" ></textarea>
       </div>
       </div>

       <div class="row time_note">
       <div class="col-md-12">
        <input type="text" class="form-control title" placeholder="제목을 입력해 주세요." name="time_title2">
       <textarea class="form-control" rows="6"  style="width:470px;" placeholder="타임라인을 작성해 주세요." name="time2" ></textarea>
       </div>
       </div>


</div>

</div>

<div class="form-group">
    <div class="col-sm-offset-5 col-sm-10 bt_end">
      <button type="button" class="btn btn-default" id="note_add">추가하기</button>
      <button type="submit" class="btn btn-default">적성완료</button>
 </div>
 </div>

</form>

</div>

<footer>
<h5>@travelia</h5>
</footer>


<script type="text/javascript" src="<c:url value="/resources/js/note.js"/>" charset="utf-8" ></script>


</body>
</html>