<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css"href="css/style.css">

</head>
<body background="1.jpg">
<header>
<div class="main"><div class="logo"><img src="ashish.png">

<ul>
  
   <li class="active"><a href="#">HOME</a></li>
  <li><a href="viewQuestions.jsp">Questions</a></li>
 <li><a href="#">Search</a></li>
 <li><a href="login.jsp">login</a></li>  
</ul>
</div>
</header>


<% 
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); 
response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Cache-Control","no-store"); 
response.setDateHeader("Expires", 0);
%>



</body></html>