<%--
  Created by IntelliJ IDEA.
  User: Zijun
  Date: 2023/4/8
  Time: 下午 09:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
</head>
<body>
<input type="button" value="新增"><br>
<hr>
<table border="1" cellspacing="0" width="800">
  <tr>
    <th>序号</th>
    <th>品牌名称</th>
    <th>企业名称</th>
    <th>排序</th>
    <th>品牌介绍</th>
    <th>状态</th>
    <th>操作</th>
  </tr>

  <c:forEach items="${brands}" var="brand" varStatus="status">
    <tr align="center">
<%--      資料庫裡面的 id 因為可能會不連續，所以不適合拿來當作編號 --%>
<%--      <td>${brand.id}</td>--%>
<%--      index 從 0 開始計數--%>
<%--      <td>#{status.index}</td>--%>
<%--      count 從 1 開始計數--%>
      <td>${status.count}</td>
      <td>${brand.brandName}</td>
      <td>${brand.companyName}</td>
      <td>${brand.ordered}</td>
      <td>${brand.description}</td>

      <c:if test="${brand.status == 1}">
        <td>啟用</td>>
      </c:if>
      <c:if test="${brand.status != 1}">
        <td>禁用</td>
      </c:if>

      <td><a href="#">修改</a> <a href="#">删除</a></td>
    </tr>
  </c:forEach>

</table>

<hr>
<c:forEach begin="1" end="10" step="1" var="i">
  <a href="#">${i}</a>
</c:forEach>


</body>
</html>