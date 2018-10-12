<head>

<style type="text/css">
#ProfilePage
{
    /* Move it off the top of the page, then centre it horizontally */
    margin: 50px auto;
    width: 635px;

/* For visibility. Delete me */
border: 5px black;
}
div.container {
    
   
    border: 5px solid black;
    height: 200px;
   
    

}



#LeftCol
{
    /* Move it to the left */
    float: left;

    width: 200px;
    text-align: center;

    /* Move it away from the content */
    margin-right: 20px;

/* For visibility. Delete me */
border: 5px black;
}
.vl {
    border-left: 6px solid black;
    height: 100px;
}

#Photo
{
    /* Width and height of photo container */
    width: 200px;
    height: 200px;

/* For visibility. Delete me */
border: 5px solid black;
}

#PhotoOptions
{
    text-align: center;
    width: 200px;

/* For visibility. Delete me */
border: 5px  solid black;
}
.star {
   color: red; /* Make it red */
   font-size: 100%; /* Make it twice as large */


#Info
{
    width: 400px;
    text-align: center;

    /* Move it to the right */
    float: right;

/* For visibility. Delete me */
border: 5px solid black;
}

#Info strong
{
    /* Give it a width */
    display: inline-block;
    width: 100px;

/* For visibility. Delete me */
border: 5px solid black;
}


</style>
</head>
<body background="duh.jpg">
<div id="ProfilePage">
    <div id="LeftCol">
    <% String name=(String)application.getAttribute("user"); %>
        <div id="Photo"><img src="image.jsp?p=<%=name%>" height="200" width="200"></div>
        <div id="ProfileOptions">
       <b> Profile Picture </b>
        </div>
    </div>

   <div class="container">
        <p>
            <strong>Name: </strong>
            <%=name %>
            <span></span>
        </p>
        <p>
            <strong>Roll no. </strong>
           <%=application.getAttribute("rollno") %>
        </p>
        <p>
            <strong>Branch </strong>
            <%=application.getAttribute("branch") %>
        </p>
        <a href="checkiftestgivenforrank.jsp">Check your rank!<span class="star">&#x2605;</span></a>
       
 
</div>
  
    <div style="clear:both"></div>
</div>
<h2> <b> Choose Subject</b><h2> <br>
<center>
<button><img src="DBMS.JPG" height="150" width="150" onclick="location.href='checkiftestgiven.jsp?p=DBMS'"></button> 
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button><img src="JAVA.JPG" height="150" width="150" onclick="location.href='checkiftestgiven.jsp?p=JAVA'"></button> 

</center>
</body>