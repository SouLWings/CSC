<%@ page import="beans.*" %>
<%@ page import="java.util.*" %>
<%@ page import="conn.DBManager" %>
<html lang="en-us">
    <head>
		<%@ include file="include/head.inc.jsp" %>
		<script>
				
		$(document).ready(function()
		{	
			$("#submitusertype").click(function(){
				$.post("register",{type:"modify",userid:$("input[name='userid']").val(),usertype:$("#selecttype").val()},function(data,status){
					if(data=="pass")
						$("#usertype"+$("input[name='userid']").val()).text($("#selecttype").val());
					else
						alert("Modification failed. There must be at least one superadmin for this site.");
				});
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
					Administration <img src='images/arrow.jpg'/> Accounts Maintenance
				</div>
				
<%  
if(session.getAttribute("sessionUser") != null) 
	if(((User)session.getAttribute("sessionUser")).getUserType().equalsIgnoreCase("superadmin") || 
	   ((User)session.getAttribute("sessionUser")).getUserType().equalsIgnoreCase("president")){
	LinkedList<User> users = DBManager.getUser(null);
%>
				<table id="viewaccount" style ='box-shadow: 0px 0px 20px #444444; border-radius:3px; margin-left: 20px; margin-right: 20px; margin-top: 20px;'>
					<tr id="1strow" style='font-weight:bolder; background-color: lightblue;' align='center' align='middle'>
						<td>Username</td>
						<td>Position</td>
						<td>Lastname</td>
						<td>Firstname</td>
						<td>Matric number</td>
						<td>Join date</td>
						<td>Membership Expiry date</td>
						<td>Last login</td>
						<td></td>
					</tr>
<% for (User user:users){%>	
					<tr id='tr<%=user.getId()%>' style = 'background-color: #EDEDED; padding: 10px;'>
						<td><%=user.getUserName()%></td>
						<td id='usertype<%=user.getId()%>'><%=user.getUserType()%></td>
						<td><%=user.getLName()%></td>
						<td><%=user.getFName()%></td>
						<td><%=user.getMatric()%></td>
						<td><%if(user.getJoinDate()==null)out.print("N/A");else out.print(user.getJoinDate());%></td>
						<td><%if(user.getExpiry()==null)out.print("N/A");else out.print(user.getExpiry());%></td>
						<td><%if(user.getLastLogin()==null)out.print("N/A");else out.print(user.getLastLogin());%></td>
						<td>
							<a href='#modalEdituser'>
								<input id='bt<%=user.getId()%>' type='button' value='change usertype'/>
							</a>

						</td>
					</tr>
<script>					
	$("#bt<%=user.getId()%>").click(function(){
		$("input[name='userid']").val('<%=user.getId()%>');
		$("span").text("<%=user.getUserName()%>");
	});
</script>					
<%}%>
				</table>
				
			<div id="modalEdituser" class="modalForm modalEdit">
				<div>
					<h1>Modify Usertype</h1>
					Choose a usertype for <span></span>
					<select id='selecttype'>
						<option>Member</option>
						<option>Treasurer</option>
						<option>Secretary</option>
						<option>Vice President</option>
						<option>President</option>
						<option>Superadmin</option>
					</select>
					<br>
					<div>
						<a href='#location'><input type='button' value='Cancel' class='floatright'/></a>
						<a href='#location'><input id='submitusertype' type='button' value='Confirm' class='floatright'/></a>
						<input type='hidden' name='type' value='usertype'/>
						<input type='hidden' name='userid'/>
					</div>
					<div style='clear:right;padding:0;margin:0;'></div>
				</div>
			</div>					
<%}else{%>				
				<article>Only website admin can view the content of this page</article>
<%}else{%>
				<article>Only website admin can view the content of this page</article>
<%}%>
				<div style='clear:both; margin-bottom:10px'></div>
			</div>
			<%@ include file="include/footer.inc.jsp" %>
        </div>
    </body>
</html>