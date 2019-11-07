/**
 * 
 */
function login_validate(){
	                            var useremail = document.getElementById("useremail").value;
	                            var userpassword  = document.getElementById("userpassword").value;
	                            if(useremail==null||useremail==""){alert("please enter the userid/email");return false;}
	                            if(userpassword==null||userpassword==""){alert("please enter the password");return false;}
	                            
                         }





function fncSubmit()
{
	
         if(document.vali.username.value == "")
               {
                   alert('Please input name');
                   document.vali.username.focus();
                   return false;
               } 

        if(document.vali.userdob.value == "")
             {
                  alert('Please input valid date of birth');
                  document.vali.userdob.focus(); 
                   return false;
              } 

        if(document.vali.useremail.value == "")
             {
                  alert('Please input emailID/userID');
                  document.vali.useremail.focus(); 
                  return false;
             } 
       if(document.vali.contact.value == "")
             {
               alert('Please input contact No');
               document.vali.contact.focus(); 
               return false;
              } 

      if(document.vali.npassword.value != document.vali.userpassword.value)
             {
               alert('Confirm Password Not Match');
               document.vali.userpassword.focus(); 
               return false;
              } 

  
document.vali.submit();
}