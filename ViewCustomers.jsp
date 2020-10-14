

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>

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
h1{
display: inline;
font-family: 'Oswald', sans-serif;
font-weight: 400;
font-size: 60px;
float:left;
text-align:centre;

background-color: rgba(0,0,0,0.4);
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
.button{
margin:0% 0% 0% 45%;
font-family: 'Raleway', sans-serif;
background: deepskyblue;
color: black;
border: 5px solid black;  
height: 50px;
font-size: 1.4em;
padding: 0 1em;
margin-bottom: 10px;
}
table, th, td {
border: 1px solid black;

margin-top:10px;
}
th{
width:40px;
font-family: 'Oswald', sans-serif;
font-size: 30px;
padding: 10px;
}
td{
    height:50px;
    padding: 30px;
}
table {
  border-collapse: collapse;
width:100px;
}

</style>
</head>
<body>
<header>
<h1>View Customers</h1>
</header>
  
<table border="1" style="font-family: 'Raleway', sans-serif;" font-size:5px>
<tr>
    <th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Contact</th>
<th>Address</th>
<th>Current Balance</th>
</tr>
<%
 Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/id15117350_sparks","root","%7Ne$SV<U1~H-<YU");
    st=con.createStatement();
    String sql="Select * from customers";
    rs=st.executeQuery(sql);
    }catch(Exception ex){
    
    }
    while(rs.next()){
    String id=rs.getString("Id");
    
    
%>
<tr>
    <td><%=rs.getString("Id") %></td>
    <td><%=rs.getString("Name") %></td>
    <td><%=rs.getString("Email") %></td>
    <td><%=rs.getString("Mobile") %></td>
    <td><%=rs.getString("Address") %></td>
    <td><%=rs.getString("CurrentBalance") %></td>
   
</tr>
<%
}
%>
</table>
<br><br>

<a href="newjsp.jsp">
    <button class="button">
        Home
    </button>
</a>
</body>
</html>
