<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/CSS/styleHeader.css"> 
<style type="text/css">
.left_panel>ul>li>ul>li{
	padding: 5px 5px 5px 5px;
}
</style>
<title>Sign On</title>
</head>

<body style="background-color: #B88AE6">
	<table style="margin: auto; width: 65%; height: auto; border: 1px solid; background-color: white; vertical-align: top">
		<tr>
			<td rowspan="1">
				<p align="left">Welcome all of you to today's Workshop!</p>
				<%-- <h2 align="center">Header</h2> <img alt="Header" src="${pageContext.request.contextPath}/resources/IMGS/HeaderBanner.png" style="width: 100%; height: 20%; border: 1px solid red;"> --%>
			</td>
		</tr>

		<tr style="vertical-align: top; height: 10px;">
			<td class="main_menu">
				<ul>
					<li><a href="homeAction">Home</a></li>
					<li>
						 <!-- The &#9660; is a BLACK DOWN-POINTING SMALL TRIANGLE. -->
						<a href="offerAction">Offerring <span class="arrow">&#9660;</span></a>
						<ul class="sub-menu">
							<li><a href="whoAction">Who are we?</a></li>
							<li><a href="whatAction">What do we do?</a></li>
							<li><a href="programAction">Program Overview</a></li>
							<li><a href="globalDepAction">Global Software Developer</a>
							</li>
							<li><a href="globalTestAction">Global Software Tester</a>
							</li>
						</ul>
					</li>
					<li><a href="">Register</a></li>
					<li><a href="fQAAction">FQA</a></li>
					<li><a href="conatcAction">Contact Us</a></li>
					<li>
						<a href="#">Lecturer</a>
					</li>
				</ul>  
			</td>
		</tr>

		<tr style="width: 100px">
			<td >
				<h3>Footer</h3>
				<p>This is Footer of Page! Contact by Training.HN@fsoft.com.vn</p> <pre>
					FPT Software ® Intranet - Best view on IE with 1024x768. 
					Contacting IT App for Support and service
					Copyright © 2013 FPT Software. All rights reserved
				</pre>
			</td>
		</tr>
	</table>
	<a href="#top">Go to Top</a>

</body>
</html>