<%@ page import="java.util.*" %>
<%@ page import="beans.News" %>
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
	LinkedList<News> news = DBManager.getNews(-1);
	for(News n : news){
%>
				$("#news<%=n.getId()%>").mouseover(function(){
					$("#editnews<%=n.getId()%>,#deletenews<%=n.getId()%>").css("opacity", over);
				});
				
				$("#news<%=n.getId()%>").mouseout(function(){
					$("#editnews<%=n.getId()%>,#deletenews<%=n.getId()%>").css("opacity", out);
				});
				
				$("#editnews<%=n.getId()%>").click(function(){
					$("#editheader").text("Modify news");
					$("#newsname").val($("#news<%=n.getId()%> header").text());
					$("#newsdate").val($("#news<%=n.getId()%> .datetime").text());
					$("#newsid").val("<%=n.getId()%>");
					$("#newsimg").val("");
					$("#newsarea").val($("#news<%=n.getId()%> p").text());
					$("#return").attr("href", "#news<%=n.getId()%>");
				});
				
				$("#deletenews<%=n.getId()%>").click(function(){
					$("#deleteid").val("<%=n.getId()%>");
					$("#modalDeleteNews a").attr("href", "#news<%=n.getId()%>");
				});
<%}%>
				$("#submitdelete").click(function(){
					if($("#deleteid").val()!=0)
					{
						$.get(("news?type=news&id="+$("#deleteid").val()),function(data,status){
							if(data=='success')
							{
								$("#news"+$("#deleteid").val()).remove();
							}
							else{
								alert("fail to remove news");
							}
						});
					}
					else
						alert("no news removed");
				});
				$("#submitnews").click(function(){
					if($("#newsid").val()==0 && $("#editheader").text()!="Add news"){
						alert("Error");
						return false;
					}
				});
				
				$("#newnews").click(function(){
					$("#editheader").text("Add news");
					$("#newsname").val("");
					$("#newsdate").val("");
					$("#newsid").val("0");
					$("#newsarea").val("");
					$("#return").attr("href", "#location")
					$("#newsname").attr("placeholder", "Enter news title here")
					$("#newsarea").attr("placeholder", "Enter content of the news")
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
					News <img src='images/arrow.jpg'/>
				</div>
				
				
				
				<%
					if(session.getAttribute("sessionUser") != null && !((User)session.getAttribute("sessionUser")).getUserType().equalsIgnoreCase("member")){
				%>
				<a href='#modalEditNews'><input id='newnews' type='button' value='Add a news'/></a>
				<%
					}
					for(News n : news){
				%>
				<div class = 'news' id = 'news<%=n.getId()%>'>
					<a href='#modalDeleteNews'><img id='deletenews<%=n.getId()%>' class='edit' src ='images/delete.png'/></a>
					<a href='#modalEditNews'><img id='editnews<%=n.getId()%>' class='edit edit2' src ='images/edit.png'/></a>
					<%if(!n.getImgDirc().equals("")){%><img class = 'newsImg' src='<%=n.getImgDirc()%>'/><%}%>
					<header><%=n.getHeader()%></header>
					<div class = 'datetime'><%=n.getDate()%></div>
					<p><%=n.getContent()%></p>
					
					<div style='clear:right; margin-bottom:10px'></div>
				</div>
				<%}%>	
			
			<div id="modalEditNews" class="modalForm modalEdit">
				<div>
					<h1 id='editheader'>Modify News</h1>
					<form action = 'news' method = 'post' enctype='multipart/form-data'>
						<input type='hidden' name='type' value='news'/>
						<input type='hidden' name='newsid' id = 'newsid' value='0'/>
						<table>
							<tr style='width:100%'>
								<td>Date:</td>
								<td><input id='newsdate' type='date' required name='newsdate'/></td>
								<td style='width:30px'></td>
								<td>Picture:</td>
								<td><input id='newsimg' type='file' name='newsimg'/></td>
							</tr>
						</table>
						News title:<br>
						<input id='newsname' type='text' name='newsname' required maxlength='512' autocomplete='off' style='width:500px'/>
						<br>Content:<br>
						<textarea id='newsarea' maxlength='2048' rows='8' required name='newsarea'></textarea>
						<br>
						<div>
							<a href='#' id='return'><input type='button' value='Cancel' class='floatright'/></a>
							<input id='submitnews' type='submit' value='Save' class='floatright'/>
						</div>
					</form>
					<div style='clear:right;padding:0;margin:0;'></div>
				</div>
			</div>
			
			<div id="modalDeleteNews" class="modalForm modalEdit">
				<div>
					<h1>Delete News</h1>
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















<%@ page import="java.sql.*" %>
<%
	String id = request.getParameter("ID");
	String name = request.getParameter("NAME");
	String age = request.getParameter("AGE");
	String city = request.getParameter("CITY");
	try{
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","user","sesame");
		PreparedStatement ps = con.prepareStatement("INSERT INTO customer VALUES(?,?,?,?)");
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, age);
		ps.setString(4, city);
		ps.executeUpdate();
		ps.close();
		con.close();
	}catch(SQLException e){
		e.printStackTrace();
	}
%>



