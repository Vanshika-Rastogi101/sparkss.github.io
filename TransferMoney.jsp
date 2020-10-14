<%-- 
    Document   : TransferMoney
    Created on : 08-Oct-2020, 14:50:35
    Author     : comp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

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
background:deepskyblue;
}
header{
background: black;
color: white;
padding: 0px 0px 6px 40px;
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

table, th, td {
border: 1px solid black;
margin-top:10px; 

}
th{
width:30px;
font-family: 'Oswald', sans-serif;
font-size: 20px;
padding: 5px;
}
td{
    height:50px;
    padding: 20px;
}
table {
    
  border-collapse: collapse;
width:100px;
}
.center{
    margin-left: auto;
  margin-right: auto;
}
.button{
margin-left: 10px;
font-family: 'Raleway', sans-serif;
background: deepskyblue;
color: black;
border: 2px solid black;
height: 50px;
font-size: 1.4em;
margin-top:20px;
padding: 0 1em;
margin-bottom: 20px;
}
#bottom { 
                position:absolute;                  
                bottom:0;                          
                right:0;                          
            } 
</style>
<script type="text/javascript">
            function greeting(){
                alert("Credited!")
            }
            </script>
</head>
<body>
    <header>
    <h1>Transfer Money</h1>
    </header>
<center>
    <table class="center" border="1">
        <tr>
<th>Name</th>
<th>Email</th>
<th>Contact</th>
<th>Address</th>
<th>Current Balance(in Rs)</th>
</tr>
<%
 Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/id15117350_sparks","root","%7Ne$SV<U1~H-<YU");
    st=con.createStatement();
    String sql="Select * from customers where id=id";
    
    rs=st.executeQuery(sql);
    }catch(Exception ex){
    
    }
    while(rs.next()){
    
    
    
%>

<%
    String id=rs.getString("Id");
    String name;
name=request.getParameter("Name");
String email=request.getParameter("Email");
String mobile=request.getParameter("Mobile");
String address=request.getParameter("Address");
String bal=request.getParameter("CurrentBalance");
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
</center>
    <br><br>
<center>
    <form action="view.jsp">
    <label style="margin-right:1px;">Select name of customer to Transfer Money</label>
    <select name="Names"class="form-control" style="width:150px" >
        <option value="-1">Select---></option>
        <%
        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
    con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/sparks","root","");
    st=con.createStatement();
    String sql="Select Name from customers";
    rs=st.executeQuery(sql);
    while(rs.next()){
    %>
    <option value="<%=rs.getString("Name") %>">
        <%=rs.getString("Name")%>
    </option>
    <%
    }
        }catch(Exception ex){
          ex.printStackTrace();
          out.println("Error");
        }
        %>
    </select>  
    <br>
    <input type="submit" value ="Select">
    </form>
    
</center>
    <b><center>Transfer Money To: 
   <%=request.getParameter("NamesList")%></center></b>
   <br>
   <br>
   <center>
   <form onsubmit="greeting()">
       <label for="credit"> Enter amount to credit:</label><br>
  <input type="number" id="credit" name="credit" ><br><br>
  <input type="submit" value="Submit">
   </form>
   </center>
</body>
</html>