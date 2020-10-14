<%-- 
    Document   : newjsp
    Created on : 05-Oct-2020, 12:13:15
    Author     : comp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.sql.*" %>

<html>
<head>
<title>
SparksFoundation
</title>
<link rel="stylesheet" href="style.css">
<style>
@import 'https://fonts.googleapis.com/css?family=Oswald:400,700';
@import 'https://fonts.googleapis.com/css?family=Montserrat:400,700';
@import 'https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i';
body{
margin: 0;
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
nav ul{
display:inline;
padding: 0px;
float: left;
}
nav ul li{
display:inline-block;
list-style-type:none;
color:white;
float: left;
margin-left:10px;
}
nav ul li a{
color: white;
text-decoration: none;
}
#nav{
font-family:'Montserrat', sans-serif;
}
.homered{
background-color: deepskyblue;
padding: 30px 10px 16px 10px;
}
.divider{
background-color:deepskyblue;
height:5px;
}
.portfolioblack:hover {
background-color: blue;
padding: 30px 10px 16px 10px;
}
.fwimage1{
background-image: url(f82001c8ef0f754f9e0d6586acd227f8.jpg);
width: 100%;
height: 100%;
background-size: cover;
background-repeat: no-repeat;
}
.homesub{
font-family: 'Raleway', sans-serif;
margin: 0;
padding: 5% 5% 0% 55%;
font-size: 30px;
color: black;
}
.homedes{
font-family: 'Raleway', sans-serif;
margin: 0% 0% 0% 55%;
font-size: 60px;
color: white;
background-color: rgba(0,0,0,0.4);
display: inline-block;
}
.homepho{
font-family: 'oswald', sans-serif;
margin:0% 0% 0% 55%;
font-size:60px;
}
.button{
margin:0% 0% 0% 55%;
font-family: 'Raleway', sans-serif;
background: deepskyblue;
color: black;
border: none;
height: 50px;
font-size: 1.4em;
padding: 0 1em;
}
#button2{
margin:0% 10% 0% 55%;
font-family: 'Raleway',sans-serif;
background: deepskyblue;
color: black;
margin-top:10px;
border: none;
height:50px;
font-size:1.4em;
padding: 0 1em;
}
</style>
</head>
<body>
    <%
    Connection con=null;
    Statement st=null;
    ResultSet rs;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/id15117350_sparks","root","%7Ne$SV<U1~H-<YU");
    st=con.createStatement();
    String sql="select * from customers";
     rs=st.executeQuery(sql);
    while(rs.next()){
    
    }
    //out.print("Successful");
    }catch(Exception ex){
    out.print(ex.getMessage());
    }
    %>
<header>
<nav>
<h1>Vanshika Rastogi</h1>
<ul id="nav">
<li><a class ="homered" href="#">Home</a></li>
<li><a class ="portfolioblack" href="#">About Me</a></li>
<li><a class ="portfolioblack" href="#">Contact</a></li>
</ul>
</nav>
</header>
<div class="divider"></div>
<div class="fwimage1">
<h2 class="homesub" >Task 1</h2>
<h1 class="homedes">Sparks Foundation</h1>
<h1 class="homepho">Banking Management</h1>
<br>
<a href="ViewCustomers.jsp">
<button class="button">View Customers</button>
</a>
<a href="TransferMoney.jsp">
<button id="button2">Transfer Money</button>
</a>
</div>
</body>
</html>