<%@ page language="java" contentType="text/html;charset=UTF-8" 
pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1" /> -->
<meta name="viewport"
	content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height, target-densitydpi=device-dpi" />
<title>Login | FotoCourtesty</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="imgs/favicon.ico">
<link rel="icon" type="image/png" href="imgs/favicon.png" sizes="256x256">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans:400,700&amp;subset=devanagari,latin-ext" rel="stylesheet">
</head>
<body>	
<header>
  <div class="container">
		<a href="index.html" class="logo"><img src="imgs/logo.svg" alt=""/></a>
		<div class="navpanel">
			<a href="join.html" class="navitem becomeamember">Become a Member</a>
			<a href="login.jsp" class="navitem login">Login</a>
			<a href="contact.html" class="navitem contact">Contact</a>
		</div>
		<div class="menubutton"><span></span><span></span><span></span></div>
  </div>
  <ul class="mobilemenu">
  	<li style="background-color: white;cursor: auto;"><img src="imgs/Close.svg" class="mobilemenuclose"/></li>
  </ul>
</header>
<section style="background-image: url(imgs/1.jpeg);background-position: center center;background-size: cover;">
	<div class="container">
	  <div class="row">
			<div class="cl3 remove-column" style="opacity: 0;">Monte Carlo</div>
			<div class="cl6">
				<div class="form" style="width: 100%;box-sizing: border-box;">
			      <h1 class="forgotpassword">Forgot Password</h1>
				  <div style="box-sizing: border-box;overflow: hidden;">
			    	<form action="ForgotPasswordServlet" method="post" class="loginform">
			    		<%
			    		String str="";
			    		str = (String)request.getAttribute("photographerEmailId");
			    		%>
						<label class="email">Email</label>
						<input type="text" class="emailbox" name="txtEmailId" value="${txtEmailId}">
						<button type="submit" class="button full loginbutton sendmeemail">Send Me Email</button>
		    			<% 
		    			if(str!=null && str.equalsIgnoreCase("ERROR")){
		    			%><br><br>
		    			<div align="center" style="color: crimson;">Invalid Data</div>
		    			<%}else{ %>
		    			<div class="tcenter"><label class="error loginerror invaliddata" style="margin-top: 20px;">Invalid Data</label></div>
		    			<%} %><br>
						<div class="row">
					        <div class="cm4">
					        	<img src="imgs/mail.svg" style="max-height: 65px;max-width:100%;margin-bottom:5px;"/>
					            <h3 class="receivemail">1. Receive Mail</h3>
					        </div>
					        <div class="cm4">
					        	<img src="imgs/instruction.svg" style="max-height: 65px;max-width:100%;margin-bottom:5px;"/>	
					            <h3 class="followinstructions">2. Follow Instructions</h3>
					        </div>
					        <div class="cm4">
					        	<img src="imgs/password.svg" style="max-height: 65px;max-width:100%;margin-bottom:5px;"/>
					            <h3 class="resetyourpassword">3. Reset Your Password</h3>
					        </div>
					    </div>	    			
		    			
						 <!-- <div class="tcenter"><a href="forgetPassword.jsp" class="link donthaveanaccount">Don't have an account?</a></div>  -->
				    </form>
				  </div>
			  </div>
			</div>
			<div class="cl3 remove-column" style="opacity: 0;">Monte Carlo</div>
		</div>
	</div>
</section>
<footer>
	<div class="container">
		<div class="row">
			<div class="cm4">
				<a href="index.html"><img src="imgs/logo.svg" class="logo"></a>
			</div>
			<div class="cm8">
				<div class="links">
					<a href="join.html" class="becomeamember">Become a Member</a>
					<a href="login.jsp" class="login">Login</a>
					<a href="contact.html" class="contact">Contact</a>
				</div>
			</div>
		</div>
		<div class="flags tcenter">
			<div class="flag english"><img src="imgs/flag britain.svg"/></div>
			<div class="flag hindi"><img src="imgs/flag india.svg"/></div>
			<div class="flag french"><img src="imgs/flag france.svg"/></div>
			<div class="flag spanish"><img src="imgs/flag spain.svg"/></div>
		</div>
		<div style="text-align: center;opacity: 0.3;">
			<a style="color:white;text-decoration: none;" href="http://deskofdesign.tk" target="_blank">Designed by &nbsp;<img src="imgs/dodlogo.svg" height="45" style="position: relative;top: 16px;">&nbsp;&nbsp;Desk of Design</a>
		</div>
	</div>
</footer>
<div class="fullloader"><img src="imgs/loading.svg"/></div>
<!--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
<script type="text/javascript" src="js/jq.js"></script>
<script type="text/javascript" src="js/data.js"></script>
<script type="text/javascript" src="js/code.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script type="text/javascript" src="js/lang.js"></script>
</body>
</html>



<!-- 
<form action="ForgotPasswordServlet">
		Enter Email Id<input type="text" name="txtEmailId"> <input
			type="submit" value="submit">
	</form> -->