<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Unauthorized Access</title>
</head>
<body>
	<h1 id="banner">Unauthorized Access !!</h1>

	<hr />


	<p class="message">Access denied!</p>
	<a href="<%=request.getContextPath()%>/">Go back to login page</a>
</body>
</html>