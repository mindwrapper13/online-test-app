<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="studentpackage.student"%>
    <%@page import="java.util.*"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>body {
  background-image: url("back.jpg"); 
  width: 100%;
    height: 100%
}</style>
</head>
<body>
<% List<student> liststudent = new ArrayList<student>();
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st1=connection.createStatement();
Statement st=connection.createStatement();
ResultSet resultSet1 = st1.executeQuery("select username,dbms from dbmsmarks");

while(resultSet1.next()){
	    String user=resultSet1.getString("username");
        int dbmsmarks  = Integer.parseInt(resultSet1.getString("DBMS"));
        ResultSet resultSet2 = st.executeQuery("select username,java from javamarks where username='"+user+"'");
        while(resultSet2.next())
        {
        	
        	int javamarks  = Integer.parseInt(resultSet2.getString("Java"));
        	int total=javamarks+dbmsmarks;
        	liststudent.add(new student(user,total,dbmsmarks,javamarks));
        }
        }

Collections.sort(liststudent);
ListIterator itrr = liststudent.listIterator();
int i=0;
   %>
  <table width=50% class="table table-striped">
    <thead>
      <tr>
        <th>RANK</th>
        <th>Username</th>
        <th>DBMS MARKS</th>
        <th>JAVA MARKS</th>
        <th>TOTAL MARKS</th>
      </tr>
    </thead>
  
  <% while(itrr.hasNext()){
	 String name=liststudent.get(i).getname();
	  
	 int dbms=liststudent.get(i).getdbms();
	  int java=liststudent.get(i).getjava();
	  int total=liststudent.get(i).gettotal();
	  i++;
	 %>
	  
    <tbody>
      <tr>
        <td><%=i %></td>
        <td><%=name%></td>
        <td><%=dbms %></td>
         <td><%=java %></td>
          <td><%=total %></td>
      </tr>
    </tbody>
	 
	  
	  
  
	  
	 <% itrr.next();
	 }%>



        
        

</body>
</html>