<%@include file="header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
    This is login.jsp
    <br>
    <%--<form action = "controller" method="post">--%>
    <form action = "/jsp/header.jsp" method="post">
        <input type="hidden" name="command" value="login"/>
        <h4><fmt:message key="message.login"/></h4>
        <input type="text" name="login" size="36" class="input" required/>
        <h4><fmt:message key="message.password"/></h4>
        <input type="password" name="password" size="36" class="input" required/>
        <input type="submit" value="<fmt:message key="message.enter"/>"/>
    </form>

    <div class="dropdown-menu" aria-labelledby="navbarDropdownLang">
        <%--<form action = "controller" method="post" >--%>
        <form action = "/jsp/header.jsp" method="post" >
            <input type="hidden" name="command" value="changelocale">
            <select id="language" name="language" onchange="submit()">
                <option value="en_US" ${language == 'en_US' ? 'selected' : ''}>En</option>
                <option value="ru_RU" ${language == 'ru_RU' ? 'selected' : ''}>Ru</option>
            </select>
        </form>
    </div>


</body>
</html>
