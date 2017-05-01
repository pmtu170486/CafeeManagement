<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sc" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>WELCOME</title>
</head>
<body>
Welcome! Your login was successful...!
<a href="<c:url value="/logout" />">Logout</a>
<sc:authorize access="hasAnyAuthority('AUTH_ADMIN')">
    <br/>This content only display with Admin
</sc:authorize>
<sc:authorize access="hasAnyAuthority('AUTH_USER')">
    <br/>This content only display with User
</sc:authorize>

</body>
</html>