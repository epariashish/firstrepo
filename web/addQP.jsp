
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

String QUESTION_ID="QUESTION_ID.nextval";
String t=request.getParameter("TOPIC");
 String useremail=(String)session.getAttribute("useremail"); 
String q=request.getParameter("QUESTION");


Connection con = null;
PreparedStatement ps = null;
//int contactno = Integer.parseInt(contact);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="insert into question values("+QUESTION_ID+",?,?,?)";

ps = con.prepareStatement(sql);

ps.setString(1,useremail);
ps.setString(2,t);
ps.setString(3,q);

int i = ps.executeUpdate();
if(i > 0)
{

out.print("you are successfully add question");

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

%>