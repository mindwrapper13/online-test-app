<%@ page import ="java.sql.*" %>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = null;
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");

try{
Statement st = con.createStatement();
String quest = request.getParameter("quest").toString();
String subject=request.getParameter("p"); 
String QA = request.getParameter("QA").toString();
String QB = request.getParameter("QB").toString();
String QC = request.getParameter("QC").toString();
String QD = request.getParameter("QD").toString();
String correctAns = request.getParameter("correctAns").toString();


String qry = "insert into "+subject+" (quest,QA,QB,QC,QD,correctAns) values('"+quest+"','"+QA+"','"+QB+"','"+QC+"','"+QD+"','"+correctAns+"')";



int row=st.executeUpdate(qry);

System.out.println(row);


if(row>0)
{
	
	String message = "DETAILS HAVE BEEN ADDED FOR" +subject+"TEST";
	request.setAttribute("Message", message);
	request.setAttribute("p",subject);
	RequestDispatcher dis=request.getRequestDispatcher("questionadded.jsp");          
	dis.forward(request,response);

    

}

}

catch(SQLException e){
System.out.println(e.getMessage());
}
}
catch(Exception e){
e.printStackTrace();
}


%>

<html>
<title></title>
<head>


</head>

<body background="duh.jpg">
<br>
<br/>
<center>

<table border="1" width="450px"  cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<form method="POST" action="" onsubmit="return validateForm(this);">

<h2 align="center"><font color="red"></font></h2>
<table border="0" width="400px" cellspacing="2" cellpadding="4">
<tr>
<td width="50%"><b>Enter Question:</b></td>
<td width="50%"><input type="text" name="quest" size="40"/> </td>
</tr>
<tr>
<td width="50%"><b>Enter Option(A.):</b></td>
<td width="50%"><input type="text" name="QA" size="40"/> </td>
</tr>
<tr>
<td width="50%"><b>Enter Option(B.):</b></td>
<td width="50%"><input type="text" name="QB" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Enter Option(C.):</b></td>
<td width="50%"><input type="text" name="QC" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Enter Option(D.):</b></td>
<td width="50%"><input type="text" name="QD" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Correct Answer:</b></td>
<td width="50%"><input type="text" name="correctAns" size="10"/> </td>
</tr> 

</table>
<center>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</center> 
</form>
</td>
</tr>
</table>
</center>
</body>
</html>