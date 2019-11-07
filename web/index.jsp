<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css"href="css/style.css">
</head>
<body background="1.jpg" text="black">

<center><h>Welcome, <%=session.getAttribute("username")%></h></center>

<ul>
  
   <li class="active"><a href="#">HOME</a></li>
  <li><a href="viewQuest.jsp">Answer</a></li>
  <li><a href="#">Notifs</a></li>
  <li><a href="userProfile.jsp">Profile</a></li>
 <li><a href="#">Search</a></li>
 <li><a href="addQuestion.jsp">Add</a></li>
 <li><a href="logout.jsp">logout</a></li>  
</ul>
</div>
<jsp:include page="viewQuest.jsp"></jsp:include>

</body></html>