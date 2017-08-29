<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Employee Management </title>
        <style type="text/css">
            .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
            .tg td{font-family:Times New Roman, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
            .tg th{font-family:Times New Roman, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
            .tg .tg-4eph{background-color:#f9f9f9}
            body{font-family:Times New Roman, sans-serif;font-weight:normal;}
        </style>
    </head>
    <body>
        <div align="center">
            <h1>Employee List</h1>

            <table class = "tg">

                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Telephone</th>
                <th>Action</th>

                <c:forEach var="employee" items="${listEmployee}">
                    <tr>
                        <td>${employee.name}</td>
                        <td>${employee.email}</td>
                        <td>${employee.address}</td>
                        <td>${employee.telephone}</td>
                        <td>
                            <input type="button" class="btn btn-success" value="Edit" onclick="location.href = 'editEmployee?id=${employee.id}';">
                            <!--<a href="editEmployee?id={employee.id}">Edit</a>-->
                            &nbsp;&nbsp;&nbsp;&nbsp; 
                            <input type="button" class="btn btn-info btn-danger" value="Delete" onclick="location.href = 'deleteEmployee?id=${employee.id}';">
                            
                            <!--<a href="deleteEmployee?id={employee.id}">Delete</a></td>-->
                    </tr>
                </c:forEach>
            </table>
            <h4>
                Need to add a new Employee? &nbsp;&nbsp; 
                <input type="button" class="btn btn-info" value="Click Here" onclick="location.href = 'newEmployee';">
            </h4>
        </div>
    </body>
</html>