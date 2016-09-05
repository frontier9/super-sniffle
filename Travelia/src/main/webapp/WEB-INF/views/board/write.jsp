<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/include/include-header.jsp"%>
<%@ include file="/WEB-INF/include/include-body.jsp"%>
<%@ include file="/WEB-INF/include/navbar-md.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <sec:csrfMetaTags/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <form id="frm">
        <table class="board_view">
            <colgroup>
                <col width="15%">
                <col width="*"/>
            </colgroup>
            <caption>글쓰기</caption>
            <tbody>
                <tr>
                    <th scope="row">title</th>
                    <td><input type="text" id="title" name="title" class="wdp_90"/></td>
                </tr>
                <tr>
                    <td colspan="2" class="view_text">
                        <textarea rows="20" cols="100" title="TITLE" id="contents" name="contents"></textarea>
                    </td>
                </tr>
            </tbody>
        </table>

        <a href="#this" class="btn" id="write">POST</a>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <a href="#this" class="btn" id="list">LIST</a>
    </form>


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