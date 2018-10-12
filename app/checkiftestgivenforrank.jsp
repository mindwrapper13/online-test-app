<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body bockground="hello.jpg">
<% 
Class.forName("com.mysql.jdbc.Driver");
String user=(String)application.getAttribute("user");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st1=connection.createStatement();
Statement st=connection.createStatement();
ResultSet resultSet1 = st1.executeQuery("select attempted from dbmsmarks where username='"+user+"'");
String attempted1=null,attempted2=null;
while(resultSet1.next()){
    attempted1=resultSet1.getString("attempted");
    
    ResultSet resultSet2 = st.executeQuery("select attempted from javamarks where username='"+user+"'");
    while(resultSet2.next())
    {
    	attempted2=resultSet1.getString("attempted");
    	
    }
    }
String message=null;
if(attempted1==null||attempted2==null){
	message="Please attempt both the tests to check your rank!"; 
System.out.print(message);
}
else
	getServletContext().getRequestDispatcher("/checkrank.jsp").forward(request, response);
	
	%>
	<h1><%=message %></h1>



</body>
</html>