<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--Import css  -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/styleIntroduction.css">
</head>
<body>
	<div class="inWapper">
		<div class="inTitle">LEARNING PATH</div>
		<div class="inContent">
			<div class="inPath">
				JAVA WEB
				<c:forEach items="${listPath}" var="path">

				</c:forEach>
			</div>
			
			<div class="inPath">
                NET WEB
                <c:forEach items="${listPath}" var="path">

                </c:forEach>
            </div>
		</div>
	</div>
</body>
</html>