<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String useremail = (String)session.getAttribute("useremail");
String driver = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@//localhost:1521/xe";
String userid = "system";
String password = "system";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from Register1 where useremail='akpatro10' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>

<head>


<link rel="stylesheet" type="text/css"href="css/style.css">
      
</head>
<body background="1.jpg" text="black">
<ul>
<li><a href="index.jsp">BACK</a></li>

</ul>

<body>
<table align="center"><tr><td><h1 color="green">Update data </h1>

<form method="post" action="update-process.jsp">
<input type="hidden" name="useremail" value="<%=resultSet.getString("useremail") %>">

<br>
name:<br>
<input type="text" name="username" value="<%=resultSet.getString("username") %>">
<br>
dob:<br>
<input type="text" name="userdob" value="<%=resultSet.getString("userdob") %>">
<br>
contact:<br>
<input type="text" name="contact" value="<%=resultSet.getString("contact") %>">
<br>
password:<br>
<input type="text" name="userpassword" value="<%=resultSet.getString("userpassword") %>">
<br>
country:<br>
<input type="text" name="country" value="<%=resultSet.getString("country") %>">

<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</td></tr></table>
</body>
</html>