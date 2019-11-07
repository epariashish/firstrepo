<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<head>


<link rel="stylesheet" type="text/css"href="css/style.css">
      
</head>
<body background="1.jpg" text="black">
<ul>
<li><a href="index.jsp">BACK</a></li>

</ul>

<%
String useremail=(String)session.getAttribute("useremail");
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
<h2 align="center"><font><strong>profile</strong></font></h2>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM register1 where  useremail='"+useremail+"'  ";//where useremail='akpatro10'

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="">

<td>NAME:<th><%=resultSet.getString("username") %></td></tr><tr>
<td>DOB:<th><%=resultSet.getString("userdob") %></td></tr><tr>
<td>USER EMAILID:<th><%=resultSet.getString("useremail") %></td></tr><tr>
<td>PHON_NO:<th><%=resultSet.getString("contact") %></th></td></tr><tr>
<td>COUNTRY:<th><%=resultSet.getString("country") %></th></td></tr>

<td>Action:edit profile<th><a href="update.jsp?useremail=<%=resultSet.getString("useremail")%>"><button type="button" style="backgroundcolor:black;color:blue;" class="edit">update</button></a></td>
</tr>

<% 
}


} catch (Exception e) {
e.printStackTrace();
}
%>
</table>









<center>view your Question</center>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM  question where useremail='"+useremail+"' ";

resultSet = statement.executeQuery(sql);
int i=1;
while(resultSet.next()){
%>

<form action="comment.jsp" method="post">

<center>
<p><p><table align="center" width="50%" bgcolor="" cellpadding="5" cellspacing="5" border="2" ><tr>
<tr><td><font color="black">
<b> userId:<%=resultSet.getString("useremail") %></br>
topic:<%=resultSet.getString("TOPIC") %></br>
<font color="red">Question:</font><%=resultSet.getString("Question") %></br></p>


<a href="deleteQuestion.jsp?Question_id=<%=resultSet.getString("Question_id") %>"><button type="button"  style="background-color:#ff0000;color:white;padding:8px 5px;border:none;font-size:16px;text-align=center;"   class="delete">Delete</button></a>




<a href="view_answers.jsp?Question_id=<%=resultSet.getString("Question_id") %>"><button type="button"  style="background-color:#008cba;color:white;padding:8px 5px;border:none;font-size:16px;text-align=center;"  class="view">view comments</button></a></br>



give ur answer..</br>

<textarea style="font-family:sans-serif;font-size:1.2em; " name="answer<%=i %>" id="answerID<%=i %>" class="asnwer"></textarea>
<input type="submit"  style="background-color:#32cd32;color:white;padding:8px 5px;border:none;font-size:16px;text-align=center;"      value="post" onclick="postQuestion(<%=(resultSet.getString("Question_id")+", 'answerID"+i+"'") %>)">
</br>


</td></tr>
</font>
</table></center>
</p>
<%// application.removeAttribute("Question_id"); %>
<%
++i;
}

} catch (Exception e) {
e.printStackTrace();
}

%>
<%//@include file="view_answers.jsp" %>
<input type="hidden" name="hidQuestionID" id="hidQuestionIDID">
<input type="hidden" name="hidAnswer" id="hidAnswerID">
</form>
<script>
	function postQuestion(questionID, answerID)
	{
		window.document.getElementById("hidQuestionIDID").value=questionID;
		
		window.document.getElementById("hidAnswerID").value=window.document.getElementById(answerID).value;
		alert(window.document.getElementById(answerID).value);
		//window.document.viewQuestion.submit();
	}
</script>
