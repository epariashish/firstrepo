<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try
{
 String useremail=request.getParameter("useremail");
String userdob=request.getParameter("userdob");

Class.forName("oracle.jdbc.driver.OracleDriver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from Register1 where useremail='"+useremail+"' and userdob='"+userdob+"'"); 

if(rs.next())
  {
   

  if(rs.getString("useremail").equals(useremail)&&rs.getString("userdob").equals(userdob)) 
        {  
              
	
      <%= rs.getString("useremail");%>
       <%= rs.getString("userpassword");%>
       
        } 
    }

else
{

%>
<script type="text/javascript">
alert('invalid username and DOB or invalid Credentials..!!');</script>
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









