<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type ="text/css" href="css/styleOrderRegister.css">
<title>Order Registration</title>
</head>
<body>
	<div class="dWRAP2">
		<div class = "dLabel1">
			CREATE ORDER
		</div>
		<form name = "order_registration" action="" method="post">
				<table cellspacing="0px">
					<tr class = "rData">
						<td class = "dLabel2">Order No<span style="color: red">*</span> </td>
						<td class = "dValue1">
							<input type = "text" name = "order_no" size="20%" placeholder = "Order No">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">Order Name<span style="color: red">*</span></td>
						<td class = "dValue1">
							<input type = "text" name = "order_name" size = "35px" placeholder = "Order Name">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">Division</td>
						<td class = "dValue1">
							<input type="text" name = "division" size="25px" placeholder = "Division">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">Region</td>
						<td class = "dValue1">
							<select name="region">
								<option value="Other">Region</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">
							Work Status:
						</td>
						<td class = "dValue1">
							<select name="work_status">
								<option value="Responsible">Responsible</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">
							Order Date<span style="color: red">*</span>
						</td>
						<td class = "dValue1">
							<input type = "date" name = "order_date" size="10px">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">
							Delivery Schedule Date<span style="color: red">*</span>
						</td>
						<td class = "dValue1">
							<input type = "date" name = "delivery_schedule_date" size="10px">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">
							Delivery Date
						</td>
						<td class = "dValue1">
							<input type = "date" name = "delivery_date" size="10px">
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">
							Order Form
						</td>
						<td class = "dValue1">
							<select name="order_form">
								<option value="J-WEB">J-WEB</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">
							Collect Type
						</td>
						<td class = "dValue1">
							<select name="collect_type">
								<option value="None">None</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class = "dLabel2">
							Instruction
						</td>
						<td class = "dValue1">
							<select name="instruction">
								<option value="None">None</option>
							</select>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="Save" class = "dButton">
							<input type="button" value="Back" class = "dButton" onclick="document.location='/FR_SERVLET_SAMPLE/PL/index.jsp'" >
						</td>
					</tr>
				</table>
			</form>
		</div>
</body>
</html>