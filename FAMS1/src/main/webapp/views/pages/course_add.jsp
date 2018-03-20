<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common_register.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-course.js"></script>
</head>
<body>
	<div class="dWRAP2">
		<div class="dLabel1">Add a New Course</div>
		<div class="message">${messageAdd}</div>
		<form name="course_registration" action="#" method="post" id="add_course">
			<table cellspacing="0px" class="register_table">
				<tr class="rData">
					<td class="dLabel2">Course Code<span style="color: red">*</span>
					</td>
					<td class="dValue1">
					   <input type="text" id="course_code" name="courseCode" value="${course.courseCode}" size="20%" placeholder="Course Code" maxlength="10" class="clDATA">
					</td>
				</tr>
				<tr>
					<td class="dLabel2">Course Title<span style="color: red">*</span></td>
					<td class="dValue1">
					   <input type="text" id="course_title" value="${course.courseTitle}"  name="courseTitle" size="35px" placeholder="Course Title" class="clDATA">
					</td>
				</tr>
				<tr>
					<td class="dLabel2">Duration</td>
					<td class="dValue1">
					   <input type="text" id="duration"  value="${course.duration}" name="duration" size="25px" class="clDATA" maxlength="2">
					</td>
				</tr>
				<tr>
					<td class="dLabel2">Description</td>
					<td class="dValue1">
					   <textarea id="descriptions"  value="${course.descriptions}" class="clDATA2"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					   <input type="button" value="Save" class="dButton" id="save"> 
					   <input type="button" value="Back" class="dButton" id="back">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>