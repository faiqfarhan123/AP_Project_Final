<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>New/Edit Contact</title>
<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc; text-align:center}
		.tg td{font-family:Times New Roman, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg tr{font-family:Times New Roman, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
                .tg .tg-4eph{background-color:#f9f9f9}
                body{font-family:Times New Roman, sans-serif;font-weight:normal;}
	</style>
</head>
<body>
    <div align="center">
        <h1>New/Edit Employee</h1>
        <form:form action="saveEmployee" method="post" modelAttribute="employee">
            
        <table  class = "tg">
            <form:hidden path="id"/>
            <tr>
                <th>Name:</th>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <th>Address:</th>
                <td><form:input path="address" /></td>
            </tr>
            <tr>
                <th>Telephone:</th>
                <td><form:input path="telephone" /></td>
            </tr>
            <tr >
                <td colspan="2" align="center" class = "tg1">
                <input type="submit" class="btn btn-info btn-block" value="Submit">
                 </td>
            </tr>
        </table>
            </table>
        </form:form>
    </div>
</body>
</html>