<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sale System</title>

<link href="<c:url value="/resources/css/styleIndex.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/sCommonME.css" />" rel="stylesheet">

<%-- <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script> --%>

<!-- <link rel="stylesheet" type="text/css" href="css/styleIndex.css">
<link rel="stylesheet" type="text/css" href="css/sCommonME.css"> -->
<script type="text/javascript">
	function loadOrder() {
		 var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("idContent").innerHTML = this.responseText;
		    }
		  };
		  alert("load");
		  xhttp.open("GET", "order_registration.jsp", true);
		  xhttp.send();
	}
</script>
</head>
<body>
	<div class="dINAL">
		<div class="dINHE">
			<jsp:include page="common_header.jsp"></jsp:include>
		</div>
		<div class="dINCO">
			<div class="dINLE">
				<%-- <jsp:include page="..\SS_PL\COMMON\SS170105ME.jsp"></jsp:include> --%>
				<div class="dMECO">
					<div class="dMELI1">Order</div>
					<div class="dMELI2">
						<a href="${pageContext.request.contextPath}/PL/order_registration.jsp"><span>&#8594;</span> Order</a>
					</div>
					<div class="dMELI1">Estimates</div>
					<div class="dMELI2">
						<a href="#" onclick="loadOrder();"><span>&#8594;</span> Estimates</a>
					</div>
					<div class="dMELI2">
                        <a href="#" onclick="loadOrder();"><span>&#8594;</span> Schedules</a>
                    </div>
					<div class="dMELI1">Customer</div>
					<div class="addTeam">
						<a href=""><span>&#8594;</span> Customer</a>
					</div>
					<div class="dMELI1">Supplier</div>
					<div class="dMELI2">
						<a href=""><span>&#8594;</span> Supplier</a>
					</div>
					<div class="dMELI1">Commondity</div>
					<div class="dMELI2">
						<a href=""><span>&#8594;</span> Commondity</a>
					</div>
					<div class="dMELI1">Employee</div>
					<div class="dMELI2">
						<a href=""><span>&#8594;</span> Employee</a>
					</div>
					<div class="dMELI1">Invoice</div>
					<div class="dMELI2">
						<a href=""><span>&#8594;</span> Order</a>
					</div>
				</div>
			</div>
			<div id="idContent" class="dINRI">
				
				<%-- <jsp:include page="order_registration.jsp"></jsp:include>  --%>
			</div>
		</div>
		<div class="fINFO">
			<jsp:include page="common_footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>