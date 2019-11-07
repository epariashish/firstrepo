<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script language="javascript">
function check()
{

if(document.addQuestion.QUESTION.value.length==0)
{
alert("Question is Mandatory");
document.addQuestion.QUESTION.focus(); 
return false;
}

document.addQuestion.submit();
}
</script>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Question </title>


<link rel="stylesheet" type="text/css"href="css/style.css">

</head>


<div class="main"><div class="logo"><img src="ashish.png">



<body background="1.jpg" text="black">

<ul>
<li><a href="index.jsp">BACK</a></li>

</ul>


<font color="black">Welcome, <%=session.getAttribute("useremail")%>,<h><%=session.getAttribute("username")%></font></h>

<form name="addQuestion" action="addQP.jsp" method="post" onsubmit="return check()">

<%
String useremail=(String)session.getAttribute("useremail");
%>

<font color="black"><center><h7>SELECT  a topic so we can show answares </h7></br>
<p>

<select name="TOPIC"><option>Technology</option>
        <option>Science</option>
        <option>Movies</option>
	<option>Music</option>
	<option>Health</option>
	<option>FOOD</option>
        <option>Books</option>
</select></p>




<i>Start your Question with "What","How","Why",etc.</i>
</br>


<textarea name="QUESTION"    rows="3" cols="40"></textarea>

<input type="submit" value="add"></br>
<input type="reset" value="reset">


</center>
</form>

</header></body>
</html>