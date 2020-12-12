<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctors</title>
</head>
<center>
<body>
<h1>Список докторов</h1>
<p><a href='<c:url value="/create_doctor" />'>Create new doctor</a></p>

<table>
<tr><th>Name</th><th>Special</th><th></th></tr>
<c:forEach var="product" items="${doctors}">
 <tr><td>${doctor.name}</td>
    <td>${doctor.special}</td>
    <td>
    <a href='<c:url value="/edit_doctor?id=${doctor.id}" />'>Edit</a> |
    <form method="post" action='<c:url value="/deletedoctor" />' style="display:inline;">
        <input type="hidden" name="id" value="${pacient.id}">
        <input type="submit" value="Delete">
        <br>
        <br>
        <input type="text" name = "doctor">
       	<input type="submit" value="Search">
    </form>
 </td></tr>
</c:forEach>
</table>
</center>
</body>
<style type="text/css">
a {
  color: #E7E5DD;
  border-radius: 25px;
  border: 3px solid #E7E5DD;
}
 a:hover {
  color: #BDB9AB;
  background: #E7E5DD;
}
a span {
  opacity: 0;
  padding-left: 5px; 
  padding-right: 5px;
  font-weight: bold;
  transition: 0.4s ease-in-out;
}
a:hover span {
  opacity: 1;
  padding-left: 10px; 
  padding-right: 10px;
  color: #BDB9AB;
}
body{
	background:#808080;
}
</style>
</html>