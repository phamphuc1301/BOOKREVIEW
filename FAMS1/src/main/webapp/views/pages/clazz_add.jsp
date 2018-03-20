<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type ="text/css" href="<%=request.getContextPath()%>/resources/css/common_register.css">
</head>
<body>
	<div class="dWRAP2">
		<div class = "dLabel1">
			Add Clazz
		</div>
		<form name="class_registration" action="saveTeam" method="post">
				<table cellspacing="0px" class="register_table">
					<tr class = "rData">
						<td class = "dLabel2">Clazz Code<span style="color: red">*</span> </td>
						<td class = "dValue1">
							<input type = "text" name = "clazzCode" size="20%" placeholder = "Class Code" maxlength="10" class="clDATA">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">Clazz Name<span style="color: red">*</span></td>
						<td class = "dValue1">
							<input type = "text" name = "clazzName" size = "35px" placeholder = "Class Name" class="clDATA">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">Start Date</td>
						<td class = "dValue1">
							<input type="date" name = "startDate" size="25px" class="clDATA">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">End Date</td>
						<td class = "dValue1">
							<input type="date" name = "endDate" size="25px" class="clDATA">
						</td>
					</tr>
					<tr>
                        <td class = "dLabel2">Technic <span style="color: red">*</span></td>
                        <td class = "dValue1">
                            <select name="technic" class="clDATA">
                                <c:forEach items="${}" var="technic">
                                    <option value="${techinic.learning_code}">${techinic.learning_name}</option>
                                </c:forEach>
                            </select>
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