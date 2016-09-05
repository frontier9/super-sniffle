<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2016-09-04
  Time: 오후 5:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
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
    var idx = "${map.idx}";
    var submit = new ComSubmit();
    submit.setUrl("<c:url value='/board/articleUpdate.do' />");
    submit.addParam("idx", idx);
    submit.submit();
}
//]]>

</script>

</body>
</html>
