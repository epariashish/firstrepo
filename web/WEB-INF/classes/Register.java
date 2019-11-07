import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Register extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
{
response.setContentType("text/html");
PrintWriter out=response.getWriter();

String n=request.getParameter("username");
String d=request.getParameter("userdob");
String e=request.getParameter("useremail");
String m=request.getParameter("contact");
String p=request.getParameter("userpassword");
String c=request.getParameter("country");


try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","system");
PreparedStatement ps=con.prepareStatement("insert into Register1 values(?,?,?,?,?,?)");
ps.setString(1,n);
ps.setString(2,d);
ps.setString(3,e);
ps.setString(4,m);
ps.setString(5,p);
ps.setString(6,c);




int i=ps.executeUpdate();
if(i>0)
response.sendRedirect("login.jsp");
//out.print("you are successfully registered");
}
catch(Exception e2)
{
System.out.println(e2);
}
out.close();
}
}
