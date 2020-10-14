<%-- 
    Document   : View
    Created on : 07-Oct-2020, 14:24:33
    Author     : comp
--%>
<%@page import=" java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>View Customers</title>
<link rel="stylesheet" href="view.css">
<style>
    @import 'https://fonts.googleapis.com/css?family=Oswald:400,700';
body{
margin: 0;
background:deepskyblue;
}
.view{
    margin-top: 20px;
    font-family: 'Raleway', sans-serif;
font-size: 30px;
color: darkblue;
}
.button{
margin:0% 0% 0% 1%;
font-family: 'Raleway', sans-serif;
background: deepskyblue;
color: black;
border: 2px solid black;;
height: 50px;
font-size: 15px;
padding: 0 1em;
}
header{
background: black;
color: white;
padding: 8px 0px 6px 40px;
height: 45px;
}
header h1{
display: inline;
font-family: 'Oswald', sans-serif;
font-weight: 400;
font-size: 32px;
float:left;
margin-top: 0px;
margin-right: 10px;
}
 </style>  
 <header>
<h1>Transfer Money</h1>
</header>
 <h2 class="view">
<center>Transfer Money from: 
    <br><br><%=request.getParameter("Names")%></center>
 </h2>
 <h2 class="view">
<center>Transfer Money to: 
    <br><br>
        <%
    Connection con=null;
    Statement st=null;
    ResultSet rs;
    
    %>
    <a href="TransferMoneyTo.jsp">
        <button class="button">
            <b>Transfer Money <br> To</b>
        </button>
    </a>
</center>
 </h2>
</body>
</html>