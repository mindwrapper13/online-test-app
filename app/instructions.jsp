<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>

<body background=hello.jpg> 
<h1> <U>ONLINE TEST</U></h1>
<%String link=request.getParameter("p"); %>
<h2>
You will be presented Multiple Choice Questions (MCQs), where you will be given four options.<br>
You will get your online test score after finishing the complete test.<br>
Total Questions : 20<br>
Maximum Time : 2 min<br>
</h2><br><br>

     <button type="button" onclick="location.href='viewtestques.jsp?p=<%=link%>'">Start Test</button>


</body>
</html>