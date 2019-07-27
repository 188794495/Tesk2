<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.text.SimpleDateFormat" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

<html>

<table align='center' border='1' cellspacing='0'>

    <tr>
        <td>id</td>
        <td>createAt</td>
        <td>updateAt</td>
        <td>name</td>
        <td>qq</td>
        <td>job</td>
        <td>startTime</td>
        <td>college</td>
        <td>number</td>
        <td>dailyUrl</td>
        <td>wish</td>
        <td>brother</td>
        <td>referee</td>
        <td>city</td>
        <td>review</td>
    </tr>

    <c:forEach items="${cs}" var="c" varStatus="st">
        <tr>
            <td>${c.id}</td>
            <td>${c.createAt}</td>
            <td>${c.updateAt}</td>
            <td>${c.name}</td>
            <td>${c.qq}</td>
            <td>${c.job}</td>
            <td>${c.startTime}</td>
            <td>${c.college}</td>
            <td>${c.number}</td>
            <td>${c.dailyUrl}</td>
            <td>${c.wish}</td>
            <td>${c.brother}</td>
            <td>${c.review}</td>
            <td>${c.city}</td>
            <td>${c.referee}</td>
        </tr>
    </c:forEach>
</table>
<div style="text-align:center">
    <a href="/listUsers">返回列表</a>
</div>
</body>
</html>