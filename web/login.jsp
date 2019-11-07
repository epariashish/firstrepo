<html>
<head>
<script type="text/javascript" src="filename.js"></script>
<link rel="stylesheet" type="text/css"href="css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>








<style>
@import"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
body{background:rgba(163, 211, 156, 1);font-family:'Open Sans'sans-serif;margin:0 auto 0 auto;
   width:100%;text-align:center;}
h1{font-size:2.5em;padding:0;margin: 0 0 30px; color:#fff;}
.box{
  position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);
  width: 400px;padding: 40px;background: rgba(0, 0, 0.9,.1);
box-sizing: border-box;box-shadow: 0 15px 25px rgba(0,0,0,.5);
border-radius: 55px; }
#useremail{background:#;border:;}

.box .textbox{
position: relative;

}
.box .textbox i{width:26px;float:left;text-align: center;}
.box .textbox input{
  width: 100%;padding: 10px 0;font-size: 16px;border:none;outline: none;background: transparent;
border-bottom: 1px solid green;

}
.buton {
	outline: none !important;
	border: none;
	background: transparent;
}

</style>













</head>
<div class="container">
<body background="1.jpg" text="black">

<li><a href="index.html">BACK</a></li>


<div class="box">
<h1>login</h1>
<form action="login4.jsp" method="post" OnSubmit="return login_validate();">

<div class="textbox">
  <i class="fa fa-user-circle-o" aria-hidden="true"></i>
<input type="text" placeholder="user email"  name="useremail" id="useremail"/>
</div>

<div class="textbox">
  <i class="fa fa-lock" aria-hidden="true"></i>
<input type="password" placeholder="password" name="userpassword" id="userpassword"/>
</div>


    <input type="submit" class="btn btn-success btn-lg" value="login" /></BR>

<font color="GREEN"><span><a href="forgotpassword.html">Forgot password</a></span>

</BR><span><a href="Register.html">new user...</a></span>


</div>


</form>

</center>
</div>
</header></body>

</html>
