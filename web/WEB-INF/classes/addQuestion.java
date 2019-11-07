import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class addQuestion extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
{
response.setContentType("text/html");
PrintWriter out=response.getWriter();

String QUESTION_ID="QUESTION_ID.nextval";
//String useremail=request.getParameter("useremail");
String useremail=(String)session.getAttribute("useremail");
String t=request.getParameter("topic");
String q=request.getParameter("question");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
PreparedStatement ps=con.prepareStatement("insert into QUESTION values("+QUESTION_ID+",?,?,?)");
ps.setString(1,useremail);
ps.setString(2,t);
ps.setString(3,q);

int i=ps.executeUpdate();
if(i>0)
out.print("you are successfully add Question");
else
out.print("you are not added Question");
}
catch(Exception e2)
{
out.println(e2);
}
out.close();
}
}
