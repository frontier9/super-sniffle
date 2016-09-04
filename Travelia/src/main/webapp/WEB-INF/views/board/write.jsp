<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/include/include-header.jsp"%>
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
        <a href="#this" class="btn" id="list">LIST</a>
    </form>

    <%@ include file="/WEB-INF/include/include-body.jsp"%>
<script type="text/javascript">
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
        var submit = new ComSubmit();
        submit.setUrl("<c:url value='/board/board' />");
        submit.submit();
    }

    function fn_insertBoard() {
        var submit = new ComSubmit('frm');
        submit.setUrl("<c:url value='/board/write' />");
        submit.submit();
    }

</script>
</body>
</html>