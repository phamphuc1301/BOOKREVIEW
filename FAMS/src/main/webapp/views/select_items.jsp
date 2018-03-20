<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Item list</title>
<style type="text/css">
/* img:nth-child(1) {
	width: 140px;
	height: 100px;
}
img:nth-child(2) {
    width: 150px;
    height: 100px;
}
img:nth-child(3) {
    width: 150px;
    height: 100px;
}
img:nth-child(4) {
    width: 200px;
    height: 100px;
}
table, tr, td {
	border: 1px solid #f7ffe6;
} */
<input {
	margin: 10px;
}
</style>
</head>
<body>
   <!--  <form action="" method="post" name="item_form"></form>
    <table>
        <tr>
            <td><img alt="Java" src="res/oracle_java.jpg"></td>
            <td>*** Lưu ý: Giá sản phẩm chưa bao gồm VAT. Quý khách có nhu cầu xuất hóa đơn vui lòng thanh toán thêm 10% giá trị sản phẩm và điền đầy đủ thông tin xuất hóa đơn GTGT trong quá trình đặt hàng.</td>
            <td><img alt="Java" src="res/android-logo.jpg"></td>
            <td><img alt="Java" src="res/cobol-logo.png"></td>
        </tr>
        <tr>
            <td><img alt="Java" src="res/oracle_java.jpg"></td>
            <td><img alt="Java" src="res/net-logo.jpg"></td>
            <td><img alt="Java" src="res/android-logo.jpg"></td>
            <td><img alt="Java" src="res/cobol-logo.png"></td>
        </tr>
    </table> -->
    <h3>Select a programming language:</h3>
    <form action="confirm.jsp" method="post" name="item_form">
	    <input type="radio" name="p_language" value="Java: How to Program, 9th Edition (Deitel)"> Java <br>
	    <input type="radio" name="p_language" value="C++: How to Program (10th Edition)"> C++<br>
	    <input type="radio" name="p_language" value="Visual C# 2012: How to Program, 5th Edition"> Visual C# <br>
	    <input type="radio" name="p_language" value="Android: How to Program, 3rd Edition"> Android <br>
	    <input type="radio" name="p_language" value="COBOL: From Micro to Mainframe (3rd Edition)"> Cobol <br><br>
	    <input type="submit" value="Submit">
    </form>
</body>
</html>