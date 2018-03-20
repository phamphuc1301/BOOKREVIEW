<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type ="text/css" href="css/styleRequestContact.css">
<title>Contact Maintain</title>
</head>
<body>
	<div class="dWRAP2">
		<div class = "dLabel1">
			<h3>Contact Screen</h3>
		</div>
		<hr>
		<div class="dFORM">
		<form name = "" action="" method="post" >
				<table cellspacing="0px" class="fTable">
					<tr class = "rData">
						<td class = "dLabel2">First Name</td>
						<td class = "dValue1">
							<input type = "text" name = "first_name" size="15%" placeholder = "First Name">
						</td>
						<td class = "dLabel2">Last Name</td>
                        <td class = "dValue1">
                            <input type = "text" name = "last_name" size = "15%" placeholder = "Last Name">
                        </td>
                        <td class = "dLabel2">Active?</td>
                        <td class = "dValue1">
                             <select name = "active">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        </td>
					</tr>
					<tr class = "rData">
                        <td class = "dLabel2">Contact Type</td>
                        <td class = "dValue1">
                            <select name = "contact_type">
                                <option value="Operational">Operational</option>
                                <option value="Fire Marshall">Fire Marshall</option>
                            </select>
                        </td>
                         <td class = "dLabel2">Phone</td>
                        <td class = "dValue1">
                            <input type = "text" name = "phone" size = "15%" placeholder = "Phone">
                        </td>
                        <td class = "dLabel2">Email</td>
                        <td class = "dValue1">
                            <input type = "text" name = "email" size = "15%" placeholder = "Email">
                        </td>
                    </tr>
					<tr>
						<td colspan="6">
						    <input type="submit" value="Register" class = "dButton">
							<input type="submit" value="Search" class = "dButton">
							<input type="button" value="Back" class = "dButton" onclick="document.location='/FR_SERVLET_SAMPLE/PL/index.jsp'" >
						</td>
					</tr>
				</table>
			</form>
			</div>

			<div class="dTABLE">
			     <table class="cTable">
                            <tr>
                                <th class="radio-list"></th>
                                <th class="contact-name">First Name</th>
                                <th class="contact-name">Last Name</th>
                                <th class="contact-mobile-phone">Mobile Phone</th>
                                <th class="contact-email">Email</th>
                                <th class="contact-type">Contact Type</th>
                                <th class="contact-active">Is Active?</th>
                                <th class="contact-other"></th>
                            </tr>
                            <tr>
                                <td class="radio-list"><input name="myRadio" type="radio"></td>
                                <td class="contact-name">sa</td>
                                <td class="contact-name">sa</td>
                                <td class="contact-mobile-phone">8787 8787</td>
                                <td class="contact-email"></td>
                                <td class="contact-type"></td>
                                <td class="contact-active"></td>
                                <td class="contact-other"></td>
                            </tr>
                    </table>
			</div>
		</div>
</body>
</html>