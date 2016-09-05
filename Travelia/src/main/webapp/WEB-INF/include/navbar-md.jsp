<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2016-09-04
  Time: 오후 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html lang="ko">
<head>
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="" />
    <meta name="author" content="trv">
    <link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />"/>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>	">
    <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/nav_module.css" />" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/css/login.css" />">
    <title>navbar</title>
</head>
<body>

<div class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content">

            <div class="bs-example bs-example-tabs">
                <ul id="myTabs" class="nav nav-tabs">
                    <li class="active"><a href="#signin" data-toggle="tab">로그인</a></li>
                    <li role="presentation"><a href="#pass" data-toggle="tab">비밀번호 찾기</a></li>
                    <li role="presentation"><a href="#signup" data-toggle="tab">회원가입</a></li>
                </ul>
            </div>

            <div class="modal-body" >
                <div id="myTabContent" class="tab-content">
                    <!-- </div> -->
                    <!-- login  -->
                    <div class="tab-pane fade in active" id="signin">
                        <form class="form center-block" action='<c:url value="/login"/>' method="post">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <fieldset>
                                <br>
                                <div class="form-group">
                                    <input type="email" name ="username" class="form-control" placeholder="이메일을 입력하세요">
                                </div>

                                <div class="form-group">
                                    <input type="password" name ="password" class="form-control" placeholder="비밀번호를 입력하세요">
                                </div>

                                <div class="form-inline text-right">
                                    <div class="form-group">
                                        <button id="submit" name="sigin1" class="btn btn-info">접속하기!</button>
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-info" id="myPass"><a href="#pass" data-toggle="tab">비번찾기!</a></button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>

                    <!-- 비밀번호 찾기 시작 -->

                    <!-- login  -->
                    <div class="tab-pane fade" id="pass">
                        <form class="form center-block">
                            <fieldset>
                                <br>
                                <div class="form-group">
                                    <input type="email" class="form-control" id="user_email" name="user_email" placeholder="이메일을 입력해주세요">
                                </div>

                                <div class="form-group text-right">
                                    <button id="submit" name="sigin1" class="btn btn-info">비번찾기!</button>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <!-- 비밀번호 찾기 끝 -->

                    <!-- sign up -->
                    <div class="tab-pane fade" id="signup">
                        <form class="form center-block" action='<c:url value="/join"/>' method="post" id="sign_up" name="sign_up">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <fieldset>
                                <br>
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="email" class="form-control" id="user_email" name="mem_email" placeholder="이메일을 입력해주세요">
                                        <span class="input-group-btn">
                       	<button class="btn btn-info" type="button">중복확인</button>
                       </span>
                                    </div>
                                    <p></p>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="user_nick" name="mem_nick" placeholder="닉네임을 입력해주세요">
                                        <span class="input-group-btn">
                       	 <button class="btn btn-info" type="button">중복확인</button>
                       </span>
                                    </div>
                                    <p></p>
                                </div>

                                <div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="user_pw" name="mem_pw" placeholder="비밀번호를 입력해주세요" >
                                    </div>
                                    <p></p>
                                </div>

                                <div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="user_pw_chk" name="mem_pw_chk" placeholder="비밀번호를 한번 더 입력해주세요">
                                    </div>
                                    <p></p>
                                </div>

                                <div>
                                    <div class="form-inline text-left">
                                        <input type="file" class="form-control" style="display: block; visibility: hidden;" id="file_input" name="file_input"
                                               accept="image/bmp, image/gif, image/jpeg, image/png">
                                        <label for="file_input">선택해</label><div id="filename"></div>
                                    </div>
                                    <p id="file_error"></p>
                                </div>


                                <div class="form-inline text-right">
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-info" value="등록하기!" />
                                    </div>
                                    <div class="form-group">
                                        <button type="reset" class="btn btn-info">취소하기!</button>
                                    </div>
                                </div>

                            </fieldset>
                        </form>
                    </div>

                </div> <!-- .tab-content-->
            </div> <!-- .modal-body-->
            <div class="modal-footer">
                <div class="text-center">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div> <!-- .modal-content-->
    </div> <!-- .modal-dialogue-->
</div> <!-- .modal-->


<!-- navbar for mobile -->
<div id="trv_mobile_menu">

    <ul class="nav nav-pills nav-stacked">

        <li><a href='<c:url value="/"/>'><span class="fa fa-home fa-fw"></span>&nbsp;Home</a></li>
        <li><a href='<c:url value="/travelnote/list" />'><span class="fa fa-book fa-fw"></span>&nbsp;Travelnote</a></li>
        <li><a href='<c:url value="/schedule/add" />'><span class="fa  fa-calendar fa-fw"></span>&nbsp;Schedule</a></li>
        <li><a href='<c:url value="/board/board" />'><span class="fa fa-pencil-square-o fa-fw"></span>&nbsp;Board</a></li>
        <li><a href='<c:url value="/profile"/>'><span class="fa fa-user fa-fw"></span>&nbsp;Profile</a></li>
        <!-- login 전 -->
        <security:authorize access="! isAuthenticated()">
            <li>
                <a href=""  data-toggle="modal" data-target="#login_modal">
                    <span class="fa fa-sign-in fa-fw"></span>
                    &nbsp;Login
                </a>
            </li>
        </security:authorize>
        <!-- login 후 ${pageContext.request.userPrincipal.name} -->
        <security:authorize access="isAuthenticated()">
            <li><form name="logout" method="post" action='<c:url value="/logout"/>'>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <a href="javascript:document.logoutmobile.submit();">
                    <span class="fa fa-sign-in fa-fw"></span>
                    &nbsp;Logout
                </a>
            </form></li>
        </security:authorize>

    </ul>
</div>
<!-- navbar for mobile -->


<!-- Navigation bar starts -->
<div class="container_wrapper">
    <div id="trv_banner_menu">
        <div class="container-fluid">

            <div class="col-xs-3 trv_logo">
                <a href="<c:url value="/"/>"> <img src="<c:url value="/resources/images/hml.svg" />" id="logo_img" alt="TraVeliA" title="TraVeliA" />
                    <h1 id="logo_text">Tra<span>Veli</span>A</h1>
                </a>

            </div>

            <div class="col-sm-9 hidden-xs">
                <ul class="nav nav-justified">
                    <li class="active"><a href="<c:url value="/"/>">Home</a></li>
                    <li><a href='<c:url value="/travelnote/list" />'>Travelnote</a></li>
                    <li><a href='<c:url value="/schedule/add" />'>Schedule</a></li>
                    <li><a href='<c:url value="/board/board" />'>Board</a></li>
                    <li><a href='<c:url value="/profile" />'>Profile</a></li>
                    <!-- login 전 -->
                    <security:authorize access="! isAuthenticated()">
                        <li><a href=""  data-toggle="modal" data-target="#login_modal"><span class="fa fa-sign-in"></span>&nbsp;Login</a></li>
                    </security:authorize>
                    <!-- login 후 -->
                    <security:authorize access="isAuthenticated()">
                        <li><form name="logout" method="post" action='<c:url value="/logout"/>'>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <a href="javascript:document.logout.submit();">
                                <span class="fa fa-sign-in"></span>
                                &nbsp;Logout
                            </a>
                        </form></li>
                    </security:authorize>
                </ul>
            </div>

            <div class="col-xs-9 visible-xs">
                <a href="#" id="mobile_menu">
                    <span class="glyphicon glyphicon-th-list"></span>
                </a>
            </div>

        </div>
    </div>
</div>
<!-- Navigation bar ends -->

<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js" />"> </script>
<!-- Latest compiled and minified JavaScript -->
<script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" />"> </script>

<script src="<c:url value="/resources/js/trv_script.js" />"></script>

<script src="<c:url value="/resources/js/jquery.validate.js" />"></script>
<script src="<c:url value="/resources/js/additional_methods.js" />"></script>
<script src="<c:url value="/resources/js/form_validation_msg.js" />"></script>
<script src="<c:url value="/resources/js/jquery.singlePageNav.min.js" />"></script>
<script src="<c:url value="/resources/js/unslider.min.js" />"></script>


<script type="text/javascript">
    //<![CDATA[

    $(function() {

        $.validator.addMethod(
                "pw",
                function(value, element, regexp) {
                    var re = new RegExp(regexp);
                    return this.optional(element) || re.test(value);
                },
                "비밀번호는 6~16자의 영문+숫자로 구성해주세요."
        );

        $.validator.addMethod(
                "nick",
                function(value, element, regexp) {
                    var re = new RegExp(regexp);
                    return this.optional(element) || re.test(value);
                },
                "별명은 2~10자의 완성된 한글로 구성해주세요."
        );

        $("#sign_up").validate({

            errorElement: "div",

            rules : {
                user_email:  {
                    required: true,
                    email: true
                },

                user_pw:     {
                    required: true,
                    pw: /^[A-z0-9]{6,16}/,
                    //rangelength: [6, 16]
                },

                user_pw_chk: {
                    required: true,
                    pw: /^[A-z0-9]{6,16}/,
                    //rangelength: [6, 16],
                    equalTo: "#user_pw"
                },

                user_nick:   {
                    required: true,
                    nick: /^[가-힣]{1}[가-힣0-9]{1,9}$/,
                    rangelength: [2, 10]
                },

                file_input: {
                    required: true,
                    extension: "jpeg|jpg|png|bmp|gif"
                }
            },

            messages : {
                user_email: {
                    required: "이메일을 입력해주세요."
                },

                user_pw: 	{
                    required: "비밀번호를 입력해주세요."
                    //rangelength: "비밀번호는 6~16자로 구성해주세요."
                },

                user_pw_chk:{
                    required: "비밀번호를 한번 더 입력해주세요.",
                    //rangelength: "비밀번호는 6~16자로 구성해주세요.",
                    equalTo: "처음 입력한 비밀번호와 일치하지 않습니다."
                },

                user_nick:  {
                    required: "닉네임을 설정해주세요.",
                    //rangelength: "닉네임은 2~10자로 구성해주세요."
                },

                file_input: {
                    required: "프로필 사진을 설정해주세요."
                }
            }
        });

        $('#myPass').click(function (e) {
            var $tabs = $('.bs-example-tabs li');
            e.preventDefault();
            $tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show')
        });

        var file_size;

        $('#file_input').on('change', function() {
            file = this;
            console.log(file);


            file_size = ( Math.round(file.files[0].size / (1024*1024) ) );
            $('#filename').text(file.files[0].name);

            if( file_size > 2) {
                console.log("in if statement");
                $('#file_error').html("<i style='color: rgba(255, 0, 0, 0.5);'>파일 크기는 2mb이하여야 합니다.</i>");

                return false;

            } else {
                $('#file_error').text("");
            }

        });

        $('#sign_up').submit(function() {
            if(file_size > 2) {
                file.files[0].name=" ";
                return false;
            }
        })


    });
    //]]>
</script>


</body>
</html>
