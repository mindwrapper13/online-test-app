<%@page import="java.sql.*"%>
<html> <head>

<style> .boxed { border: 1px solid black ;
}
header, footer {
    padding: 1em;
    color: black;
    clear: left;
    background-color:orange;
    text-align: center;
}
div{
  background-color:#419D78;
  color:#EFD0CA;
  font-size:20px;
  text-align:center;
}
div.transbox {
  margin: 30px;
  background-color: black;
  border: 1px solid black;
  opacity: 0.7;
  filter: alpha(opacity=80); 
position:fixed;
}
hr {
	border-top: 3px double #8c8b8b;
}</style>

<body background="hello.jpg">
<form action="result.jsp" method="post" id="form">

<div>Time left = <span>This test will end in in <b id="timer">60</b> <b>seconds</b>.</span> </div>
<script>

window.onload = function() {
	// Onload event of Javascript
	// Initializing timer variable
	var x = 60;
	var y = document.getElementById("timer");
	// Display count down for 20s
	setInterval(function() {
	if (x <= 61 && x >= 1) {
	x--;
	y.innerHTML = '' + x + '';
	if (x == 0) {
		submitform()
	}
	}
	}, 1000);
	// Form Submitting after 20s
	var auto_refresh = setInterval(function() {
	submitform();
	}, 100000);
	// Form submit function
	function submitform() {
 // Calling validate function
	
	
	document.getElementById("form").submit();
	
	}
}
</script>

<%
String link=request.getParameter("p");
application.setAttribute("testname",link);
Class.forName("com.mysql.jdbc.Driver");
ResultSet rs;
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=connection.createStatement();
 rs=st.executeQuery("Select * from "+link+" ");
int i=1; %>
<header><h1><%=link%> TEST </h1></header> <% 
while(rs.next()){
    String ques=rs.getString("quest");
	String qa=rs.getString("QA");
	String qb=rs.getString("QB");
	String qc=rs.getString("QC");
	String qd=rs.getString("QD");
	
%>
  
  <table>
<tr>
<td><b><%=i%> . <%=ques%> <b></b></td>

</tr>
<tr>
<td><input type="radio" name="<%=i%>" value="<%=qa%>"> <%=qa%> </td> </tr>
</tr>
<tr>
<td><input type="radio" name="<%=i%>" value="<%=qb%>"> <%=qb%> </td> </tr>
</tr>
<tr>
<td><input type="radio" name="<%=i%>" value="<%=qc%>"> <%=qc%> </td> </tr>
</tr>
<tr>
<td><input type="radio" name="<%=i%>" value="<%=qd%>"> <%=qd%> </td> </tr>
</table>
<hr>

<% 
i++;
}
%>
<input type="submit" value="submitans">



</form>
</body>
</head>
</html>