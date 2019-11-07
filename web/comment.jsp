<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%! String driverName = "oracle.jdbc.driver.OracleDriver";%>
<%!String url = "jdbc:oracle:thin:@//localhost:1521/xe";%>
<%!String user = "system";%>
<%!String psw = "system";%>



<%

String Question_id=request.getParameter("hidQuestionID");
//(String)session.getAttribute("Question_id");
String answer=request.getParameter("hidAnswer");
String answer_id="answer_id.nextval";
String useremail=(String)session.getAttribute("useremail");
String time=request.getParameter("time");
String no_like=request.getParameter("no_like");
String no_dislike=request.getParameter("no_dislike");
//String Question_id=request.getParameter("Question_id");
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="insert into answers values("+answer_id+",?,?,?,?,?,?)";


ps = con.prepareStatement(sql);
ps.setString(1,useremail);
ps.setString(2,Question_id);
ps.setString(3,answer);
ps.setString(4,time);
ps.setString(5,no_like);
ps.setString(6,no_dislike);
int i = ps.executeUpdate();
if(i > 0)
{
%>
<script type="text/javascript">
alert('successful add comment ');</script>
<jsp:include page="index.jsp"></jsp:include>
<%


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