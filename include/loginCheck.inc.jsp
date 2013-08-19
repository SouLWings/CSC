<%@ page import="beans.User" %>
<%  
	if(session.getAttribute("sessionUser") != null){
		User user = (User)session.getAttribute("sessionUser");
%>
	<div id='login'>
		Welcome, <a href='profile.jsp?id=${sessionUser.id}'>${sessionUser.FName}</a> 
		<%if(!user.getUserType().equalsIgnoreCase("member")){%>
		 | <a href='#addmember'>Add paid member</a> 
			<%if(user.getUserType().equalsIgnoreCase("superadmin") || user.getUserType().equalsIgnoreCase("president")){%>
			 | <a href='accounts.jsp'>View accounts</a> 
			<%}%>
		<%}%>
		 | <a href='logout'>Logout</a>
	</div>
	
	<%if(!user.getUserType().equalsIgnoreCase("member")){%>
	<div id="addmember" class="modalForm modalEdit">
		<div>
			<h1>Add member</h1>
			Enter matric number:
			<input type='text' name='newmatric' style='width:250px'/>
			<div>
				<a href='#'><input type='button' value='Cancel' class="floatright"/></a>
				<input name='addmatric' type='button' value='Add' class="floatright"/>
			</div>
			<div style='clear:right;padding:0;margin:0;'></div>
		</div>
	</div>		
	<%}%>	
<%}else{%>
	<div id='login'>
		<a href='#modalLogin'>Login</a> | <a href='#modalRegister'>Register</a>
	</div>

	<div id="modalLogin" class="modalForm">
		<div>
			<a href="#" title="Close" class="close">X</a>
			<form id='loginForm' action='login' method='post'>
			<h1>Login</h1>
			<div id='loginmsg'>${message}</div>
			<p>Username:<br>
			<input type='text'name='username'/></p>
			<p>Password:<br>
			<input type='password'name='password'/><br></p>
			<input type='submit' value='log In' name='submit'/>
			<p><b>
				<a href='#modalLogin' id='reset' class='roll-link'><span data-title='Request a new password.'>Forgot your password?</span></a>
				<br>
				<a href='#modalRegister' class='roll-link'><span data-title='Register a new account.'>Don't have an account?</span></a>
			</b></p>
			</form>
		</div>
	</div>

	<div id="modalRegister" class="modalForm">
		<div>
			<a href="#" title="Close" class="close">X</a>
			<form id='registerForm' action='register' method='get' style='margin-bottom:0'>
				<h1>Register</h1>
				<div id='registermsg'></div>
				<table>					
					<tr>
						<td>Matric number:</td>
					</tr>
					<tr>
						<td colspan='2'><input id='input8'  type='text' name='matric' maxlength='20' spellcheck='false' required autocomplete='off' placeholder='Enter Your Matric Number' style='width:100%;'/></td>
					</tr>
					<tr>
						<td>Username:</td>
						<td></td>
					</tr>
					<tr>
						<td colspan='2'><input id='input1' style='width:100%;' type='text' name='username' maxlength='16' required autocomplete='off' placeholder='Create a username' spellcheck='false' onkeyup = "validate(this)"/></td>
					</tr>
					<tr>
						<td>Password:</td>
					</tr>
					<tr>
						<td><input id='input2'  type='password' name='password' required placeholder='create a password'/></td>
						<td><input id='input3'  type='password' name='rpassword' required placeholder='retype password here'/></td>
					</tr>
					<tr>
						<td>Name:</td>
					</tr>
					<tr>
						<td><input id='input4'  type='text' name='fname' spellcheck='false' required autocomplete='off' placeholder='First Name'/></td>
						<td><input id='input5'  type='text' name='lname' spellcheck='false' required autocomplete='off' placeholder='Last Name'/></td>
					</tr>
					<tr>
						<td>Email address:</td>
						<td>Phone number:</td>
					</tr>
					<tr>
						<td><input id='input6'  type='email' name='email' maxlength='64' spellcheck='false' required autocomplete='off' placeholder='Type your email'/></td>
						<td><input id='input9'  type='tel' name='phone' maxlength='20' spellcheck='false' required autocomplete='off' placeholder='Enter your phone number'/></td>
					</tr>
					<tr>
						<td colspan='2'><input style='width:100%; margin-top:10px;' type='submit' value='Register' name='submit'/></td>
					</tr>
				</table>
					<p><b><a href='#modalLogin' class='roll-link'><span data-title='Log in to your account.'>Already have an account?</span></a></b></p>
			</form>
		</div>
	</div>
<%}%>
	<div id="modalMessage" class="modalForm">
		<div>
			<a href="#" title="Close" class="close">X</a>
			<div class='modalmsg'>${message}
			</div>
		</div>
	</div>
	
	<div id="modalEditdoyouknow" class="modalForm modalEdit">
		<div>
			<h1>Modify "Do You Know?" fact</h1>
			<textarea id='doyouknowarea' maxlength='1024' rows='5'></textarea>
			<br>
			<div>
				<a href='#joinus'><input type='button' value='Cancel' class='floatright'/></a>
				<a href='#joinus'><input id='submitdoyouknow' type='button' value='Save' class='floatright'/></a>
				<input type='hidden' name='type' value='article'/>
			</div>
			<div style='clear:right;padding:0;margin:0;'></div>
		</div>
	</div>	

<%session.removeAttribute("message");%>