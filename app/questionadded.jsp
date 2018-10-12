<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body background="duh.jpg">
<center>
        <h3><%=request.getAttribute("Message")%></h3>
    </center><br>
   <br><br>
     <button type="button" onclick="location.href='facultywelcome.jsp'">Home page</button>
     <button type="button" onclick="location.href='quespage.jsp?p=<%=request.getAttribute("p")%>'">Add more questions</button>
</body>

</body>
</html>