<!DOCTYPE html>
<html>
<head>

  <link rel="stylesheet" type="text/css"href="css/style.css">
</head>
<body background="1.jpg">

<div class="main"><div class="logo"><img src="ashish.png">

<ul>
   <li><jsp:include page="searchSingleuser1.jsp"></jsp:include></li>
   <li class="active"><a href="#">HOME</a></li> 
  <li><a href="viewQuestions.jsp">Answer</a></li>
  <li><a href="#">Notifs</a></li>
  <li><a href="#">Profile</a></li>
 <li><a href="search1.html">userDetalis</a></li>
 <li><a href="addQuestion.jsp">Add</a></li>
 <li><a href="logout.jsp">logout</a></li>  
</ul>
</div>
<b>welcome to admin page,<%=session.getAttribute("username")%></b>

</header>


</body></html>