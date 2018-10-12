<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div.transbox {
  margin: 50px; 
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.7;
  filter: alpha(opacity=80); 
  width: 1000px;
  height:1000px
position:fixed;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body background="duh.jpg">
<% 
String value= request.getParameter("1");
String value1= request.getParameter("2");
String value2= request.getParameter("3");
String value3= request.getParameter("4");
String value4= request.getParameter("5");

ArrayList<String> submittedques = new ArrayList<String>(10);
submittedques.add(0,value);
submittedques.add(1,value1);
submittedques.add(2,value2);
submittedques.add(3,value3);
submittedques.add(4,value4);

String link=(String)application.getAttribute("testname");

Class.forName("com.mysql.jdbc.Driver");
ResultSet rs;
int i;

ArrayList<String> anslist = new ArrayList<String>(10);
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=connection.createStatement();
 rs=st.executeQuery("Select correctans from "+link+" ");

while(rs.next()){
	
	String ques=rs.getString("correctans");
	
	anslist.add(ques);
	
	
	
	
	
}

int correct=0,left=0;
int marks=0;
for(int y=0;y<5;y++)
{

	 String optn = submittedques.get(y);
	 String ans = anslist.get(y);
	 if(optn==null) {optn="no";
	 left++;}
	 
	 if(optn.equals(ans)){
		 marks=marks+5;
		 
	 }
	 
	 
}
int att=5-left;
System.out.println(marks);
application.setAttribute("testname",link);
Class.forName("com.mysql.jdbc.Driver");
String user=(String)application.getAttribute("user");

String query = "INSERT INTO "+link+"MARKS(username,"+link+",attempted) values (?,?,?)";
PreparedStatement stmt = connection.prepareStatement(query);
String markss=String.valueOf(marks);
stmt.setString(1,user);
stmt.setString(2,markss);
stmt.setString(3,"Yes");
int row = stmt.executeUpdate();
if (row > 0) {
	%>
	<center>
	<div class="transbox">
	<b><h1>Test completed!</h1></b><br>
	<h2>You Score <%=marks %> out of 25<h2> <br>
	<h3>Questions attempted :<%=att %></h3>
	<h3>Number Unattempted questions: <%=left %></h3>  </center>
	<br>
	<br>
	<button type="submit" onclick="location.href='viewimage.jsp'">Dashboard</button>
	<% 
	
    
}


%>

	
 

</body>
</html>