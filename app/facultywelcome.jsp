<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<style>header {
    padding: 1em;
    
   
  border: 1px solid black;
    clear: left;
    text-align: center;
}</style>
</head>
<body background="duh.jpg">
<form action="quespage?p"></form>
<header> <h1> FACULTY PAGE </h1> </header>

<center><h2> WELCOME <%=application.getAttribute("usefac")%>! </h2> </center>
<h2>Add Questions To Online Test <br><br> Choose Subject:</h2> <br>
<font size="7">
  <ul>
    <li><a href="quespage.jsp?p=DBMS">DBMS</a></li>
    <li><a href="quespage.jsp?p=JAVA">JAVA</a></li>
    
   
  </ul>

</body>
</html>