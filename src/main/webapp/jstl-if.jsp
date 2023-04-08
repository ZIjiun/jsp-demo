<%--
  Created by IntelliJ IDEA.
  User: Zijun
  Date: 2023/4/8
  Time: 下午 08:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%--
    c:if: 用來完成邏輯判斷，替換 java if else
--%>

<%--    <c:if test="true">--%>
<%--        <h1>true</h1>--%>
<%--    </c:if>--%>

<%--    <c:if test="false">--%>
<%--        <h1>false</h1>--%>
<%--    </c:if>--%>

    <c:if test="${status == 1}">
        啟用
    </c:if>
    
    <c:if test="${status == 0}">
        禁用
    </c:if>

</body>
</html>
