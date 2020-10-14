<%-- 
    Document   : TransferMoneyTo
    Created on : 13-Oct-2020, 12:29:39
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
margin-bottom: 20px;
}
</style>
</head>
<body>
    <header>
<h1>Transfer Money</h1>
</header>
    <%
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    %>
  <center>
    <form action="TransferMoney.jsp">
    <label style="margin-right:1px;">Select name of customer to Transfer Money</label>
    <select name="NamesList"class="form-control" style="width:150px" >
        <option value="-1">Select---></option>
        <%
        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
    con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/id15117350_sparks","root","%7Ne$SV<U1~H-<YU");
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
</body>
</html>
