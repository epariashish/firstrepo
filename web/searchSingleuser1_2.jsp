<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%




String driver = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@//localhost:1521/xe";

String userid = "system";
String password = "system";
String useremail=request.getParameter("useremail");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body background="1.jpg" text="black">
<b>back</b>

<table align="center" cellpadding="5" cellspacing="5" border="1">
<h1>Search Data</h1>
<tr bgcolor="white">
<td><b>username</b></td>
<td><b>userdob</b></td>
<td><b>useremail</b></td>
<td><b>contact</b></td>
<td><b>userpassword</b></td>
<td><b>country</b></td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from Register1 where useremail='"+useremail+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("userdob") %></td>
<td><%=resultSet.getString("useremail") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("userpassword") %></td>
<td><%=resultSet.getString("country") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
