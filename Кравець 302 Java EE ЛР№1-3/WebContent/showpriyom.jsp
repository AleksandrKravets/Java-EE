<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Priyom</title>
</head>
<body>
<h1>Список приёма</h1>
<p><a href='<c:url value="/create_priyom" />'>Create new</a></p>
<table>
<tr><th>Skarga</th><th>Diagnos</th><th>Datapr</th><th></th></tr>
<c:forEach var="product" items="${priyoms}">
 <tr><td>${priyom.skarga}</td>
    <td>${priyom.diagnos}</td>
    <td>${priyom.datapr}</td>
    <td>
    <a href='<c:url value="/edit_priyom?id=${priyom.id}" />'>Edit</a> |
    <form method="post" action='<c:url value="/deletepriyom" />' style="display:inline;">
        <input type="hidden" name="id" value="${priyom.id}">
        <input type="submit" value="Delete">
        <input type="text" name = "priyom">
       	<input type="submit" value="Search">
    </form>
 </td></tr>
</c:forEach>
</table>
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