<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>=)</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<table border="1" class="simple-little-table" align="center">
    <tr>
        <th>Курс валют</th>
        <th>Текущий курс</th>
        <th>Последнее обновление</th>
        <th>Продажа</th>
        <th>Покупка</th>
    </tr>
    <c:forEach items="${rates}" var="currency">
        <tr>
            <td><c:out value="${currency.getName()}"/></td>
            <td><c:out value="${currency.getRate()}"/></td>
            <td><c:out value="${currency.getTime()}"/><br>
                <c:out value="${currency.getDate()}"/></td>
            <td><c:out value="${currency.getAsk()}"/></td>
            <td><c:out value="${currency.getBid()}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>


