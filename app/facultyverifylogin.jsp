<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
    String userid1 = request.getParameter("uname");    
    String pwd = request.getParameter("psw");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from facultylogin where faculty_id='"+userid1+"' and password='"+pwd+"'");
    if (rs.next()) {
    	
    	     
    	
        application.setAttribute("userfac", userid1);
        getServletContext().getRequestDispatcher("/facultywelcome.jsp").forward(request, response);
    } else {
        out.println("Invalid password");
    }
%>
</body>
</html>