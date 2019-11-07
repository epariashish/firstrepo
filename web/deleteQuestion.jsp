<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String Question=request.getParameter("Question");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "system");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM question WHERE Question='"+Question+"'");
//out.println("Data Deleted Successfully!");
response.sendRedirect("viewQuest.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

