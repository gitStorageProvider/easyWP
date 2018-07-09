<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="language"
       value="${not empty param.language ? param.language :
       not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" scope="session"/>
<fmt:setBundle basename="messages" />


<%--<fmt:setLocale value="ru_RU" scope="session"/>--%>







<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
    This is header.jsp
    <br>
    <h1>request parameters:</h1><br>
    <c:forEach items="${param}" var="par">
        Parameter Name/Value : <c:out value="${par.key} - ${par.value}"/><br>
    </c:forEach>
    <br>
    <h1>session objects:</h1><br>
    <c:forEach items="${sessionScope}" var="par">
        Session object name/value : <c:out value="${par.key} - ${par.value}"/><br>
    </c:forEach>
    <h1>request objects:</h1><br>
    <c:forEach items="${requestScope}" var="par">
        Request object name/value : <c:out value="${par.key} - ${par.value}"/><br>
    </c:forEach>


</body>
</html>
