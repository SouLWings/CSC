<%@ page import="java.util.*" %>
<%@ page import="beans.*" %>
<%@ page import="conn.DBManager" %>
<html lang="en-us">
    <head>
		<%@ include file="include/head.inc.jsp" %>
        <script>
			$(document).ready(function()
			{		
				var over = "0.9";
				var out = "0.2";
			<%
			int x = -1;
			if(request.getParameter("type")!= null)
			{
				if(request.getParameter("type").equals("past"))//past
					x = -2;
				else if(request.getParameter("type").equals("upcoming"))//upcoming
					x = -3;
			}
				LinkedList<PEvent> events = DBManager.getEvent(x);

				for(PEvent n : events){
			%>
				$("#event<%=n.getId()%>").mouseover(function(){
					$("#editevent<%=n.getId()%>,#deleteevent<%=n.getId()%>").css("opacity", over);
				});
				
				$("#event<%=n.getId()%>").mouseout(function(){
					$("#editevent<%=n.getId()%>,#deleteevent<%=n.getId()%>").css("opacity", out);
				});
					
						
				$("#editevent<%=n.getId()%>").click(function(){
					$("#editheader").text("Modify event");
					$("#modalEditEvent input[name='eventid']").val("<%=n.getId()%>");
					$("#modalEditEvent input[name='eventtitle']").val($("#event<%=n.getId()%> .etitle").text());
					$("#modalEditEvent input[name='eventdate']").val($("#event<%=n.getId()%> .edate").text());
					$("#modalEditEvent input[name='eventtime']").val($("#event<%=n.getId()%> .etime").text());
					$("#modalEditEvent textarea").val($("#event<%=n.getId()%> .edescription").text());
					$("#modalEditEvent input[name='eventvenue']").val($("#event<%=n.getId()%> .evenue").text());
					$("#modalEditEvent input[name='eventorganizer']").val($("#event<%=n.getId()%> .eorganizer").text());
					$("#modalEditEvent input[name='eventperson']").val($("#event<%=n.getId()%> .eperson").text());
					$("#return").attr("href", "#event<%=n.getId()%>");
				});
				
				$("#deleteevent<%=n.getId()%>").click(function(){
					$("#deleteid").val("<%=n.getId()%>");
					$("#modalDeleteEvent a").attr("href", "#event<%=n.getId()%>");
				});
<%}%>
				$("#submitdelete").click(function(){
					if($("#deleteid").val()!=0)
					{
						$.get(("event?type=event&id="+$("#deleteid").val()),function(data,status){
							if(data=='success')
							{
								$("#event"+$("#deleteid").val()).remove();
							}
							else{
								alert("fail to remove event");
							}
						});
					}
					else
						alert("no event removed");
				});
				$("#submitevent").click(function(){
					if($("#eventid").val()==0 && $("#editheader").text()!="Add event"){
						alert("Error");
						return false;
					}
				});
				
				$("#newevent").click(function(){
					$("#editheader").text("Add event");
					$("#modalEditEvent input[name='eventid']").val("0");
					$("#modalEditEvent input[name='eventtitle']").val("");
					$("#modalEditEvent input[name='eventdate']").val("");
					$("#modalEditEvent input[name='eventtime']").val("");
					$("#modalEditEvent textarea").val("");
					$("#modalEditEvent input[name='eventvenue']").val("");
					$("#modalEditEvent input[name='eventorganizer']").val("");
					$("#modalEditEvent input[name='eventperson']").val("");
					$("#return").attr("href", "#location");
					
				});
				
				
			});
			
				
		</script>
		<style>
			.edit2{
				right:26px;
			}
		</style>
    </head>
	<body>
        <div id='wrapper'>
			<jsp:include page = "include/loginCheck.inc.jsp" />
			<%@ include file="include/headernav.inc.jsp" %>
			<div id='content'>
			
				<div id='location'>
					<a href = "event.jsp">Events</a> <img src='images/arrow.jpg'/>
				<%
					if(x==-2)
						out.print("Past events");
					else if(x==-3)
						out.print("Upcoming events");
					else
						out.print("All events");
				%>
				</div>
				
				<%
					if(session.getAttribute("sessionUser") != null && !((User)session.getAttribute("sessionUser")).getUserType().equalsIgnoreCase("member")){
				%>
				<a href='#modalEditEvent'><input id='newevent' type='button' value='Add an event'/></a>
				<%
					}
					for(PEvent n : events){
				%>
				<div class = 'event' id = 'event<%=n.getId()%>'>
					<a href='#modalDeleteEvent'><img id='deleteevent<%=n.getId()%>' class='edit' src ='images/delete.png'/></a>
					<a href='#modalEditEvent'><img id='editevent<%=n.getId()%>' class='edit edit2' src ='images/edit.png'/></a>
					<%if(!n.getImgDirc().equals("")){%>
						<img class = 'eventImg' src='<%=n.getImgDirc()%>'/>
					<%}%> 
					<p>		<div class = 'etitle'><%=n.getTitle()%></div>
					<br>	Date: <div class = 'edate'><%=n.getDate()%></div>
					<br>	Time: <div class = 'etime'><%=n.getTime()%></div>
					<br>	Venue: <div class = 'evenue'><%=n.getVenue()%></div>
					<br>	Description: <div class = 'edescription'><br> <%=n.getDescription()%></div>
					<br>	Organizer: <div class = 'eorganizer'><br> <%=n.getOrganizer()%></div>
					<br>	Person in charge: <div class = 'eperson'><br> <%=n.getPersonIncharge()%></div>
                    </p>
				</div>
				<%}%>	
			
			<div id="modalEditEvent" class="modalForm modalEdit">
				<div>
					<h1 id='editheader'>Modify Event</h1>
					<form action='event' method='post' enctype='multipart/form-data'>
					<input type='hidden' name='type' value='event'/>
					<input type='hidden' name='eventid' id = 'eventid' value='0'/>
					<table>
						<tr>
							<td>Event title:</td>
							<td><input type='text' name='eventtitle' maxlength='128' autocomplete='off' required/></td>
							<td>Date:</td>
							<td><input type='date' name='eventdate' required/></td>
						</tr>
						<tr>
							<td>Time:</td>
							<td><input type='text' name='eventtime' required/></td>
							<td>Venue:</td>
							<td><input type='text' name='eventvenue' maxlength='128' required/></td>
						</tr>
						<tr>
							<td>Organizer:</td>
							<td><input type='text' name='eventorganizer' maxlength='128' required/></td>
							<td>Incharge by:</td>
							<td><input type='text' name='eventperson' maxlength='128' required/></td>
						</tr>
					</table>
					Description:<br>
					<textarea id='eventarea' maxlength='2048' rows='6' name='eventarea' required></textarea>
					<br>
					<div>
						<a href='#' id='return'><input type='button' value='Cancel' class='floatright'/></a>
						<input id='submitevent' type='submit' value='Save' class='floatright'/></a>
					</div>
					</form>
					<div style='clear:right;padding:0;margin:0;'></div>
				</div>
			</div>
			
			<div id="modalDeleteEvent" class="modalForm modalEdit">
				<div>
					<h1>Delete Event</h1>
					<p>Confirm to delete?</p>
					<input type='hidden' id='deleteid'/>
					<a href='#'><input type='button' value='No' class='floatright'/></a>
					<a href='#'><input id='submitdelete' type='button' value='Yes' class='floatright'/></a>
					<div style='clear:right;padding:0;margin:0;'></div>
				</div>
			</div>			
				
				<div style='clear:both; margin-bottom:10px'></div>
			</div>
			<%@ include file="include/footer.inc.jsp" %>
        </div>
    </body>
</html>