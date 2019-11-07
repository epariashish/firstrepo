
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String Question_id=request.getParameter("Question_id");
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
<html><head>
<link rel="stylesheet" type="text/css"href="css/style.css">
</head>


<body background="1.jpg" text="black">

<ul>
<li><a href="index.jsp">BACK</a></li>

</ul>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM answers where question_id='"+Question_id+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td>username :  <%=resultSet.getString("useremail") %></td>
<td>comments :  <%=resultSet.getString("answers") %></td>
</tr>

<% 
}


} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>