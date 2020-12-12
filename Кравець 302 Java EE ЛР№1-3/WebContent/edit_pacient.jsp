
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit pacient</title>
</head>
<body>
<h3>Edit pacient</h3>
<form method="post">
<input type="hidden" value="${pacient.id}" name="id" />
<label>Name</label><br>
<input name="name" value="${pacient.name}" /><br><br>
<label>Skarga</label><br>
<input name="skarga" value="${pacient.skarga}" /><br><br>
<input type="submit" value="Send" />
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