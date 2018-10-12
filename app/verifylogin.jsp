<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%

    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("psw");
  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where email='"+userid+"' and password='"+pwd+"'");
    if (rs.next()) {
    	
    	     
    	String roll=rs.getString("rollno");
    	String branch=rs.getString("branch");
        application.setAttribute("user", userid);
        application.setAttribute("rollno",roll);
        application.setAttribute("branch",branch);
        
        getServletContext().getRequestDispatcher("/viewimage.jsp").forward(request, response);
    } else {
        out.println("Invalid password");
    }

    
    

%>
</body>
</html>