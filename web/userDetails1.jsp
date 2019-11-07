<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("username");
String driverName = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@//localhost:1521/xe";
String userId = "system";
String password = "system";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<h2 align="center"><font><strong>register table</strong></font></h2>

<link rel="stylesheet" type="text/css"href="css/style.css">
<body background="1.jpg">

<ul>
<li><a href="adminINDEX.jsp">BACK</a></li>

</ul>


<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="white">
<td><b>username</b></td>
<td><b>userdob</b></td>
<td><b>useremail</b></td>
<td><b>contact</b></td>
<td><b>userpassword</b></td>
<td><b>country</b></td>
<td><b>Action</b></td>
<td><b>Action</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM register1 ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#FFC300">

<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("userdob") %></td>
<td><%=resultSet.getString("useremail") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("userpassword") %></td>
<td><%=resultSet.getString("country") %></td>
<td><a href="update.jsp?useremail=<%=resultSet.getString("useremail")%>"><button type="button" style="backgroundcolor:black;color:blue;" class="update">update</button></a></td>
<td><a href="deleteUser1.jsp?useremail=<%=resultSet.getString("useremail") %>"><button type="button"  style="backgroundcolor:black;color:red;"  class="delete">Delete</button></a></td>



</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
