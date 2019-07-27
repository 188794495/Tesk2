--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>

<json:object>

    <%--json格式的假数据--%>
    <json:property name="name" value="${name}"/>
    <json:property name="wish" value="${wish}"/>
    <json:property name="colloge" value="${college}"/>
    <json:property name="job" value="${job}"/>
    <json:property name="number" value="${number}"/>
    <json:property name="refree" value="${refree}"/>

</json:object>