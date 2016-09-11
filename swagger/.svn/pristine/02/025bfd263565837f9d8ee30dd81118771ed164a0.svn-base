<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="../common/taglib.jsp" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1>服务执行结果:${result.errorMsg}</h1>
<p>购物车列表信息:</p>
<table border="1">
    <tr>
        <td colspan="4">客户名称:${result.dataSet.customerName}</td>
    </tr>
    <tr>
        <th>编号</th>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>创建时间</th>
    </tr>
    <c:forEach var="cartItem" items="${result.dataSet.cartProList}">
        <tr>
            <td>${cartItem.id}</td>
            <td>${cartItem.goodsId}</td>
            <td>${cartItem.goodsName}</td>
            <td>${cartItem.createTime}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
