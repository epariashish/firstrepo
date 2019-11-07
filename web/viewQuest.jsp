
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
Today's date: <%= (new java.util.Date()).toLocaleString()%>
<%
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


<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM  question ";

resultSet = statement.executeQuery(sql);
int i=1;
while(resultSet.next()){
%>
<form action="comment.jsp" method="post" name="viewQuestion">
<center>
<p><p><table align="center" width="50%" bgcolor="" cellpadding="2" cellspacing="2" border="2" text color="black" ><tr>
<tr><td> <font color="black">userId:<%=resultSet.getString("useremail") %></br>
topic:<%=resultSet.getString("TOPIC") %></br>
Question:<%=resultSet.getString("Question") %></br></p>

<% //request.setAttribute("Question_id", resultSet.getString("Question_id"));%>








give ur answer..</br>

<textarea style="font-family:sans-serif;font-size:1.2em; " name="answer<%=i %>" id="answerID<%=i %>" class="asnwer"></textarea>
</br>
<input type="submit" value="post" style="background-color:#f44336;color:white;padding:10px 24px;border:none;font-size:16px;text-align=center;"    onclick="postQuestion(<%=(resultSet.getString("Question_id")+", 'answerID"+i+"'") %>)">

<a href="view_answers.jsp?Question_id=<%=resultSet.getString("Question_id") %>"><button type="button"  style="background-color:#008cba;color:white;padding:10px 24px;border:none;font-size:16px;text-align=center;"   class="view">view comments</button></a></br>


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
