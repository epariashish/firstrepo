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
<h2 align="center"><font><strong>view all question</strong></font></h2>
<link rel="stylesheet" type="text/css"href="css/style.css">
<body background="1.jpg" text="black">

<ul>
<li><a href="index.jsp">BACK</a></li>

</ul>

<table align="center" cellpadding="5" cellspacing="3" border="1">
<tr>

</tr>
<tr bgcolor="white">

<td><b>QUESTION_ID</b></td>
<td><b>USERID/EMAIL</b></td>
<td><b>TOPIC</b></td>
<td><b>QUESTION</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM  question ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
//<tr bgcolor="white">

<td><%=resultSet.getString("QUESTION_ID") %></td>
<td><%=resultSet.getString("USEREMAIL") %></td>
<td><%=resultSet.getString("TOPIC") %></td>
<td><%=resultSet.getString("Question") %></td>



<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body></table>
