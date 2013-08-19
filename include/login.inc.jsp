<div id='login'>
	<a href='#modalLogin'>Login</a> | <a href='register.jsp'>Register</a>
</div>

<div id="modalLogin" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<form action='loginServlet' method='post'>
		<h1>Login</h1>
		<div id='errorMsg'><% if(session.getAttribute("attempt")!=null){%>Incorrect username or password.<%}%>
		</div>
		<p>Username:<br>
		<input type='text'name='username'/></p>
		<p>Password:<br>
		<input type='text'name='password'/><br></p>
		<input type='submit' value='log In' name='submit'/>
		<p><b>
			<a href='#reset' class='roll-link'><span data-title='Request a new password.'>Forgot your password?</span></a>
			<br>
			<a href='#register' class='roll-link'><span data-title='Register a new account.'>Don't have an account?</span></a>
		</b></p>
		</form>
	</div>
</div>
