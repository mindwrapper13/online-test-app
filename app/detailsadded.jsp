<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body bacground="duh.jpg">
<center>
        <h3><%=request.getAttribute("Message")%></h3>
    </center>
    <br> <br>
     <button type="button" onclick="location.href='login.html'">Login</button>
     
</body>
</html>