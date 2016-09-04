<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>first</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</head>
<body>
<h2>게시판 목록</h2>
<table style="border:1px solid #ccc">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
    <tr>
        <th scope="col">글번호</th>
        <th scope="col">카테고리</th>
        <th scope="col">제목</th>
        <th scope="col">조회수</th>
        <th scope="col">작성자</th>x[
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
                    <td>${row.brd_hit }</td>
                    <td>${row.brd_writer }</td>
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

<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
</body>
</html>