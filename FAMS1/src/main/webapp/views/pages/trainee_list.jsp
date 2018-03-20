<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styleClazzList.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<!--import js  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-trainee.js"></script>

</head>
<body>
	<div class="clWapper">
		<div class="rowTitle">Course List</div>
		<div class="rowContent">
			<table class="table3">
				<thead>
					<tr>
						<th>Course Code</th>
						<th>Course Title</th>
						<th>Duration</th>
						<th>Descriptions</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listOfCourse}" var="course">
						<tr>
							<td>${course.courseCode}</td>
							<td>${course.courseTitle}</td>
							<td>${course.duration}</td>
							<td>${course.descriptions}</td>
							<td>
							     <a href="#" onclick="editFunc('${course.courseCode}')" class="link1" id="edit">Edit</a>  |
							     <a href="#" onclick="deleteFunc('${course.courseCode}')" class="link1" id="delete">Delete</a>
							</td> 
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	</div>
</body>
</html>