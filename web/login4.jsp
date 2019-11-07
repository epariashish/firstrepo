<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try
{
String useremail=request.getParameter("useremail"); 
//session.putValue("useremail",useremail); 
String userpassword=request.getParameter("userpassword"); 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from Register1 where useremail='"+useremail+"' and userpassword='"+userpassword+"'"); 

if(rs.next())
  {
    if(rs.getString("userpassword").equals("admin")&&rs.getString("useremail").equals("admin")) 
        {  
              
	session.setAttribute("useremail", useremail);
        session.setAttribute("username", rs.getString("username"));
         response.sendRedirect("adminINDEX.jsp");
       
        } 

  else if(rs.getString("userpassword").equals(userpassword)&&rs.getString("useremail").equals(useremail)) 
        {  
              
	session.setAttribute("useremail", useremail);
        session.setAttribute("username", rs.getString("username"));
         response.sendRedirect("index.jsp");
       
        } 
    }

else
{

%>
<script type="text/javascript">
alert('invalid username and password or invalid Credentials..!!');</script>
<jsp:include page="login.jsp"></jsp:include>


<%
}
}
catch (Exception e)
{
e.printStackTrace();
}
//return rs
%>
