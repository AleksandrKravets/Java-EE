<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Create priyom</title>
</head>
<body>
<h3>New priyom</h3>
<form method="post">
<label>Skarga</label><br>
<input name="skarga"/><br><br>
<label>Diagnos</label><br>
<input name="diagnos"/><br><br>
<label>Datapr</label><br>
<input name="datapr"/><br><br>
<input type="submit" value="Save" />
</form>
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