<html>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
    /*将post method 改变为delete*/
    $(function () {
        $(".delete").click(function () {
            var href = $(this).attr("href");
            $("#formdelete").attr("action", href).submit();
            return false;
        })
    })
</script>

<%--<div style="width:500px;margin:0px auto;text-align:center">--%>
<table align='center' border='1' cellspacing='0'>
    <tr>
        <td><spring:message code="id"></spring:message>:</td>
        <td><spring:message code="create_at"></spring:message>:</td>
        <td><spring:message code="update_at"></spring:message>:</td>
        <td><spring:message code="name"></spring:message>:</td>
        <td><spring:message code="qq"></spring:message>:</td>
        <td><spring:message code="job"></spring:message>:</td>
        <td><spring:message code="start_time"></spring:message>:</td>
        <td><spring:message code="college"></spring:message>:</td>
        <td><spring:message code="number"></spring:message>:</td>
        <td><spring:message code="daily_url"></spring:message>:</td>
        <td><spring:message code="wish"></spring:message>:</td>
        <td><spring:message code="brother"></spring:message>:</td>
        <td><spring:message code="referee"></spring:message>:</td>
        <td><spring:message code="city"></spring:message>:</td>
        <td><spring:message code="review"></spring:message>:</td>
        <td>编辑</td>
        <td>删除</td>
    </tr>
    <c:forEach items="${list}" var="c" varStatus="st">
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
            <td>${c.referee}</td>
            <td>${c.city}</td>
            <td>${c.review}</td>
            <td><a href="listUsers/${c.id}">编辑</a></td>
            <td><a class="delete" href="listUsers/${c.id}">删除</a></td>

        </tr>
    </c:forEach>
</table>

<div style="text-align:center">
    <a href="?start=0">首 页</a>
    <c:if test="${page.start-page.count>=0}">
        <a href="?start=${page.start-page.count}">上一页</a>
    </c:if>
    <c:if test="${page.start+page.count<=page.last}">
        <a href="?start=${page.start+page.count}">下一页</a>
    </c:if>
    <a href="?start=${page.last}">末 页</a>
</div>


<div style="text-align:center;margin-top:40px">

    <form method="POST" action="listUsers">
        <%--创建时间：--%>
        <%--<input name="createAt" value=DateTime.Now type="time"><br><br>--%>
        <%--更新时间--%>
        <%--<input name="updateAt" value="${c.updateAt}" type="text"><br><br>--%>
        姓名
        <input name="name" value="${c.name}" type="text"><br><br>
        QQ
        <input name="qq" value="${c.qq}" type="int"><br><br>
        职业类型
        <input name="job" value="${c.job}" type="text"><br><br>
        <%--开始时间--%>
        <%--<input name="startTime" value="${c.startTime}" type="int"><br><br>--%>
        毕业院校
        <input name="college" value="${c.college}" type="text"><br><br>
        学号
        <input name="number" value="${c.number}" type="int"><br><br>
        日报地址
        <input name="dailyUrl" value="${c.dailyUrl}" type="text"><br><br>
        意愿
        <input name="wish" value="${c.wish}" type="text"><br><br>
        师兄
        <input name="brother" value="${c.brother}" type="text"><br><br>
        了解途径
        <input name="referee" value="${c.referee}" type="text"><br><br>
        城市
        <input name="city" value="${c.city}" type="text"><br><br>
        review
        <input name="review" value="${c.review}" type="text"><br><br>

        <input type="submit" value="增加分类">
    </form>

    <form action="/user/name">
        <input type="text" name="name" placeholder="请输入姓名">
        <input type="submit" value="根据姓名查询">
    </form>

    <form id="formdelete" action="" method="POST">
        <input type="hidden" name="_method" value="DELETE">
    </form>

</div>

</body>
</html>
