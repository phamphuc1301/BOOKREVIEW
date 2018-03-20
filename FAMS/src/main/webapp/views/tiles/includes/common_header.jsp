<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/sCommonHE.css">
</head>
<body>
	<div class="dHECO">
		<div class="dHELI1">
			<img alt="SMS" src="<%=request.getContextPath()%>/resources/res/user.png" width="2%" height="40%" align="left" style="margin-top: 8px; margin-left: 5px; border: 0px solid;">
			<span style="font-size: 14px; color: black">Sale System</span>
			<span>${userName}</span>
			<span style="margin-top: 12px; margin-left: 80%;"> <a href="singout">Logout</a> </span>
		</div>
	</div>
</body>
</html>