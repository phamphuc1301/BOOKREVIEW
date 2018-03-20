<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--  -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/styleClazzList.css">
</head>
<body>
	<div class="clWapper">
		<div class="rowTitle">Clazz List</div>
		<div class="rowContent">
			<table class="table3">
				<thead>
					<tr>
						<th>Clazz Code</th>
						<th>Clazz Name</th>
						<th>Start Date</th>
						<th>End Date</th>
						<th>Status</th>
						<th>LearningPath</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listOfTeam}" var="team">
						<tr>
							<td>${team.teamCode}</td>
							<td>${team.teamName}</td>
							<td>${team.startDate}</td>
							<td>${team.endDate}</td>
							<td></td>
							<td><a href="">View Learning Path</a></td>
							<td><a href="teamEdit">Edit</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	</div>
</body>
</html>