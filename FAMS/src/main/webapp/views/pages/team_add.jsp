<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type ="text/css" href="<%=request.getContextPath()%>/resources/css/common_register.css">
</head>
<body>
	<div class="dWRAP2">
		<div class = "dLabel1">
			CREATE TEAM
		</div>
		<form name="class_registration" action="saveTeam" method="post">
				<table cellspacing="0px">
					<tr class = "rData">
						<td class = "dLabel2">Team Code<span style="color: red">*</span> </td>
						<td class = "dValue1">
							<input type = "text" name = "teamCode" size="20%" placeholder = "Class No">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">Team Name<span style="color: red">*</span></td>
						<td class = "dValue1">
							<input type = "text" name = "teamName" size = "35px" placeholder = "Class Name">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">Start Date</td>
						<td class = "dValue1">
							<input type="date" name = "startDate" size="25px">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">End Date</td>
						<td class = "dValue1">
							<input type="date" name = "endDate" size="25px">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="Save" class = "dButton">
							<input type="button" value="Back" class = "dButton" >
						</td>
					</tr>
				</table>
			</form>
		</div>
</body>
</html>