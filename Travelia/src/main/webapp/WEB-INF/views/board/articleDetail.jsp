<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML>
<html>
<head>
    <sec:csrfMetaTags/>
<%@ include file="/WEB-INF/include/include-header.jsp"%>
</head>
<body>
    <table class="board_view">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>
        <caption>상세 조회 페이지</caption>
        <tbody>
            <tr>
                <th scope="row">글 번호</th>
                <td>${map.brd_article_no}</td>
                <th scope="row">조회수</th>
                <td>${map.brd_hit}</td>
            </tr>
            <tr>
                <th scope="row">작성자</th>
                <td>${map.brd_writer}</td>
                <th scope="row">카테고리</th>
                <td>${map.brd_cat}</td>
            </tr>
            <tr>
                <th scope="row">제목</th>
                <td colspan="3">${map.brd_article_title}</td>
            </tr>
            <tr>
                <td colspan="4">${map.brd_article}</td>
            </tr>
        </tbody>
    </table>

<a href="#this" class="btn" id="list">목록으로</a>
<a href="#this" class="btn" id="update">수정하기</a>
<%@ include file="/WEB-INF/include/include-body.jsp"%>

<script type="text/javascript">
//<![CDATA[
$(document).ready(function() {
    $('#list').on('click', function (e) {
        e.preventDefault();
        e.stopPropagation();
        fn_openBoardList();
    });

    $('#update').on('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        fn_openArticleUpdate();
    });


});

function fn_openBoardList() {
    console.log("in position");
    //var submit = new ComSubmit();

    //submit.setUrl("<c:url value='/board/board' />");
    location.href="/board/board";
    //submit.submit();
}

function fn_openArticleUpdate() {
    var idx = "${map.brd_article_no}";
    var csrf_param = $("meta[name='_csrf_parameter']").attr('content');
    var csrf_token = $("meta[name='_csrf']").attr('content');
    var submit = new ComSubmit();
    submit.setUrl("<c:url value='/board/openUpdateForm.do' />");
    submit.addParam("idx", idx);
    submit.submit(csrf_param, csrf_token);
}
//]]>

</script>

</body>
</html>
