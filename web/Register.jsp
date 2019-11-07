

<!DOCTYPE html>
<html>
<head><script type="text/javascript">

<li><a href="index.html">BACK</a></li>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><body bgcolor="ffc0cb" text="black">




<form name="Register1" action="Regi2.jsp" method="post">


<center>
<h1>Welcome to Register Form </h1>
Name:<input type="name"placeholder="your fullName" name="username"/><br/>
DOB:<input type="date" name="userdob"></br>
email:<input type="email" placeholder="your email" name="useremail"></br>
contact No:+91<!--<input type="text" pattern="[6-9]{1}[0-9]{9}" name="contact">--><input type="text" name="contact"></br>
new password<input type="password"name="npassword"/><br/><br/>
Confirm password:<input type="password"name="userpassword"/><br/><br/>

country:


<select name="country">
<option>INDIA</option>
<option>PAKISTAN</option>
<option>AUSTRELLIA</option>
<option>Others</option>
</select>

<br/><br/>
<input type="submit" value="Register"/>
</center>
</form>
<%
try{
	String data=session.getAttribute("msg").toString();
	out.print(data);
	}
catch(Exception ex)
{
	
	
}
%>


</body>
</html>