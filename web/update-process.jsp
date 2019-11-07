<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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




if(useremail!= null)
{
Connection con = null;
PreparedStatement ps = null;
//int contactno = Integer.parseInt(contact);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update Register1 set username=?,userdob=?,useremail=?,contact=?,userpassword=?,country=? where useremail ='"+useremail+"'";
//String sql="Update Register1 set (username,userdob,useremail,contact,userpassword,country)=(?,?,?,?,?,?) where useremail=?";

ps = con.prepareStatement(sql);
ps.setString(1,username);
ps.setString(2,userdob);
ps.setString(3,useremail);
ps.setString(4,contact);
ps.setString(5,userpassword);
ps.setString(6,country);
Date utilDate=new SimpleDateFormat("dd-mm-yyyy").parse(userdob);
ps.setDate(2, new java.sql.Date(utilDate.getTime()));
//ps.setString(7,useremail);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
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
}
%>