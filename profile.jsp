<%@ page import="beans.*" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="conn.DBManager" %>
<html lang="en-us">
    <head>
		<%@ include file="include/head.inc.jsp" %>
		
		<style>
			.td2{
				font-weight:400;
				width:450px;
				background-color:lightblue;
				border-radius:3px 3px 3px 3px;
				padding-left:20px;
			}
			.td1{
				width:230px;
				padding-left:20px;
				font-weight:bolder;
				background-color:#E0D5D9;
				border-radius:3px 3px 3px 3px;
			}
			
		</style>
		<script>
			$(document).ready(function()
			{	
				$("#edituser").click(function(){
					$("#editfirstname").val($("#editable1").text());
					$("#editlastname").val($("#editable2").text());
					$("#editemail").val($("#editable3").text());
					$("#editphone").val($("#editable4").text());
					$("#edityos").val($("#editable5").text());
					$("#editmajor").val($("#editable6").text());
					$("#userid").val(<%=request.getParameter("id")%>);
				});		
			});
		</script>
    </head>
	<body>
	
		<div id='wrapper'>
			<jsp:include page = "include/loginCheck.inc.jsp" />
			<%@ include file="include/headernav.inc.jsp" %>
			<div id='content'>
			
				<div id='location'>
					Profile <img src='images/arrow.jpg'/>
				</div>
				<%
					LinkedList<User> users = DBManager.getUser(request.getParameter("id"));
					User user = new User();
					if(users.size()==1){
						user = users.get(0);
					if(session.getAttribute("sessionUser") != null)
						if(user.getId()==((User)session.getAttribute("sessionUser")).getId())
						{
				%>
					<a href='#modalEditProfile'><input type='button' id='edituser' value='Edit profile'/></a>
				<article style="font-family:'calibri';font-size:25px; font-weight:bolder;">
					Your profile
				</article>
				<%}else{%>
				<article style="font-family:'calibri';font-size:25px; font-weight:bolder;">
					<%=user.getUserName()%>'s profile
				</article>
				<%}%>
				
				<div style='position:relative; width:500px;'>
					<h3 style="padding-left:52px">Basic Info</h3>
				</div>
				<table style="font-family:'calibri'; font-size:18px; margin-left: 55px; margin-top:10px; box-shadow: 0px 0px 20px #444444; border-radius:3px;" class='profile' height='300px'>
					<tr>
						<td class="td1">Position</td>
						<td class="td2"><%=user.getUserType()%></td>
					</tr>
					<tr>
						<td class="td1">Lastname</td>
						<td class="td2" id='editable2'><%=user.getLName()%></td>
					</tr>
					<tr>
						<td class="td1">Firstname</td>
						<td class="td2" id='editable1'><%=user.getFName()%></td>
					</tr>
					<tr>
						<td class="td1">Matric number</td>
						<td class="td2"><%=user.getMatric()%></td>
					</tr>
					<tr>
						<td class="td1">Email</td>
						<td class="td2" id='editable3'><%=user.getEmail()%></td>
					</tr>
					<tr>
						<td class="td1">Contact number</td>
						<td class="td2" id='editable4'><%=user.getPhone()%></td>
					</tr>
					<tr>
						<td class="td1">Year of study</td>
						<td class="td2" id='editable5'><%if(user.getYos()==0)out.print("N/A");else out.print(user.getYos());%></td>
					</tr>
					<tr>
						<td class="td1">Major</td>
						<td class="td2" id='editable6'><%if(user.getMajor()==null)out.print("N/A");else out.print(user.getMajor());%></td>
					</tr>
				</table>
				<br>
				
				<h3 style="padding-left:52px">Account Info</h3>
				<table style="font-family:'calibri'; font-size:18px; margin-left: 55px; margin-top:10px; box-shadow: 0px 0px 20px #444444; border-radius:3px;" class='profile2'height='110px'>	
					<tr>
						<td class="td1">Join date</td>
						<td class="td2"><%if(user.getJoinDate()==null)out.print("N/A");else out.print(user.getJoinDate());%></td>
					</tr>
					<tr>
						<td class="td1">Membership Expiry date</td>
						<td class="td2"><%if(user.getExpiry()==null)out.print("N/A");else out.print(user.getExpiry());%></td>
					</tr>
					<tr>
						<td class="td1">Last login</td>
						<td class="td2"><%if(user.getLastLogin()==null)out.print("N/A");else out.print(user.getLastLogin());%></td>
					</tr>
				</table>
				<%}else{%>
				<article>
					Sorry, this user does not exist.
				</article>
				<%}%>
				<div style='clear:both; margin-bottom:10px'></div>
			</div>
			
			<div id="modalEditProfile" class="modalForm modalEdit2">
				<div>
					<h1>Modify Profile</h1>
					<form action='modify' method='get'>
					<input type='hidden' name='type' value='user'/>
					<input type='hidden' name='userid' id = 'userid' value='<%=user.getId()%>'/>
					<table>
						<tr>
							<td>First Name:</td>
							<td><input type='text' id='editfirstname' name='fname' maxlength='128' autocomplete='off' required/></td>
							<td>Last Name:</td>
							<td><input type='text' id='editlastname' name='lname' maxlength='64' autocomplete='off' required/></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><input type='email' id='editemail' name='email' required/></td>
							<td>Contact Number:</td>
							<td><input type='text' id='editphone' name='phone' maxlength='16' required/></td>
						</tr>
						<tr>
							<td>Year of study:</td>
							<td><input type='text' id='edityos' name='yos' maxlength='1'/></td>
							<td>Major:</td>
							<td><input type='text' id='editmajor' name='major' list="majors" placeholder='Click to show majors'/></td>
						</tr>
					</table>
					<br>
					<div>
						<a href='#' id='return'><input type='button' value='Cancel' class='floatright'/></a>
						<input id='submituser' type='submit' value='Save' class='floatright'/></a>
					</div>
					</form>
					<div style='clear:right;padding:0;margin:0;'></div>
				</div>
			</div>
			<%@ include file="include/footer.inc.jsp" %>
        </div>
    </body>
</html>
<datalist id="majors">
    <option value ="None">   
    <option value ="Computer Science - Artificial Intelligance">   
    <option value ="Computer Science - Software Engineering">   
    <option value ="Computer Science - Management Information System">   
    <option value ="Computer Science - Networking">   
    <option value ="Information Technology - Management">   
    <option value ="Information Technology - Multimedia">   
</datalist>