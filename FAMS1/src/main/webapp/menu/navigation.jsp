<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
.side_bar>ul>li {
	position: inherit;
	padding: 5px 10px;
	font-family: Candana;
	font-size: 20px;
}

.side_bar>ul>li>a: hover{
	font-family: Candana;
	font-size: 20px;
	color: #FFF;
}

.side_bar>ul>li>ul {
	display: none;
	position: relative; 
/* 	background : #29A329; */
	top: 41px;
	width: 130px;
	left: 0px;
}

.side_bar>ul>li:hover ul {
	display: block;
	position: inherit;
}

.side_bar ul li:hover {
	transition: all 0.25s;
}

.side_bar>ul>li>ul>li {
	padding: 5px 10px;
}
</style>
</head>
<body>
<div class="side_bar">
	<h4 style="text-align: center; border-bottom: 1px dotted;">CAMPUS
		LINK</h4>
	<ul style="list-style-type: none">
		<li><a href="">Home</a></li>
		<li><a href="">Offerring</a>
			<ul style="list-style-type: none">
				<li><a href="">How are we?</a></li>
				<li><a href="">What do we do?</a></li>
			</ul></li>
		<li><a href="">Register</a></li>
		<li><a href="">FQA</a></li>
		<li><a href="">Contact Us</a></li>
	</ul>
</div>
</body>
</html>