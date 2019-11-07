<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%! String driverName = "oracle.jdbc.driver.OracleDriver";%>
<%!String url = "jdbc:oracle:thin:@//localhost:1521/xe";%>
<%!String user = "system";%>
<%!String psw = "system";%>
<%
String username = request.getParameter("username");
String userdob=request.getParameter("userdob");
String useremail=request.getParameter("useremail");
String contact=request.getParameter("contact");
String userpassword=request.getParameter("userpassword");
String country=request.getParameter("country");



Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="insert into Register1 values(?,?,?,?,?,?)";


ps = con.prepareStatement(sql);
ps.setString(1,username);
//ps.setString(2,userdob);
//Date utilDate=new SimpleDateFormat("dd-mm-yyyy").parse(userdob);
ps.setDate(2, new java.sql.Date(new SimpleDateFormat("dd-mm-yyyy").parse(userdob).getTime()));
ps.setString(3,useremail);
ps.setString(4,contact);
ps.setString(5,userpassword);
ps.setString(6,country);
//out.println(ps.toString());
int i = ps.executeUpdate();
if(i > 0)
{
//<center color="red">'sucessfully Register ..plz enter userid/emailid and password'</center>
//<jsp:include page="login.jsp"></jsp:include>

response.sendRedirect("login.jsp?msg=thank you for registering");
//out.print("Record  Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
//}
%>