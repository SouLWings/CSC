<%@ page import="beans.*" %>
<%@ page import="java.util.*" %>
<%@ page import="conn.DBManager" %>
<% 	
	Cookie[] cookies = request.getCookies();
	String c = null;
	for(Cookie x : cookies)
		if(x.getName().equals("sample"))
			c = x.getValue();
	LinkedList<Article> articles = DBManager.getArticles("homepage");
	LinkedList<Article> images = DBManager.getArticles("homeslider");
	LinkedList<News> a = DBManager.getNews(1);
	News news = new News();
	if(a.size()>0)
		news = a.get(0);
	LinkedList<PEvent> b = DBManager.getEvent(1);
	PEvent e = new PEvent();
	if(b.size()>0)
		e = b.get(0);
%>
<html lang="en-us">
    <head>
		<%@ include file="include/head.inc.jsp" %>
		<script>
			var x=1
			window.setInterval(function()
			{	
				if(x==1)	
				{
					$("#imgslide1").css("opacity", "0");				
					$("#imgslide2").css("opacity", "1");				
					$("#imgslide3").css("opacity", "0");				
					x=2;
				} 
				else if(x==2)
				{
					$("#imgslide1").css("opacity", "0");				
					$("#imgslide2").css("opacity", "0");				
					$("#imgslide3").css("opacity", "1");		
					x=3;	
				}
				else 
				{
					$("#imgslide1").css("opacity", "1");				
					$("#imgslide2").css("opacity", "0");				
					$("#imgslide3").css("opacity", "0");					
					x=1;
				}
			},5000);		
		
	$(document).ready(function()
	{		
		var over = "0.9";
		var out = "0.2";
		$("#contentflash").mouseover(function(){
			$("#editflash").css("opacity", over);
		});
		
		$("#contentflash").mouseout(function(){
			$("#editflash").css("opacity", out);
		});
		
		$("#mainarticle").mouseover(function(){
			$("#editarticle").css("opacity", over);
		});
		
		$("#mainarticle").mouseout(function(){
			$("#editarticle").css("opacity", out);
		});
		
		$("#editarticle").click(function(){
			$("#modalEditHome2 textarea").text($("#article1").text());
		});
		
		$("#submitarticle").click(function(){
			$.get(("modify?type=article&location=homepage&value="+$("#articlearea").val()),function(data,status){
				if(data=='pass')
					$("#article1").text($("#articlearea").val());
				else
					alert("Update failed");
			});
		});
		
		$("#modalEditHome2 textarea").text($("#article1").text());
	});
		</script>
    </head>
	<body>
	
		<div id='wrapper'>
			<jsp:include page = "include/loginCheck.inc.jsp" />
			<%@ include file="include/headernav.inc.jsp" %>
			<div id='content'>
				<div id='location'>
					Home <img src='images/arrow.jpg'/>
				</div>
				Cookie = <%=c%>
				<div id='contentflash'>
					<a href='#modalEdithome1'><img id='editflash' class='edit' src ='images/edit.png'/></a>
					<ul>
						<li>
							<img id='imgslide1' src ='<%if(images.size()>0)out.print(images.get(0).getContent());%>' alt='Image not available'/>
						</li>
						<li>
							<img id='imgslide2' src ='<%if(images.size()>0)out.print(images.get(1).getContent());%>' alt='Image not available'/>
						</li>
						<li>
							<img id='imgslide3' src ='<%if(images.size()>0)out.print(images.get(2).getContent());%>' alt='Image not available'/>
						</li>
					</ul>
				</div>
				
				<article id='mainarticle'>
					<a href='#modalEdithome2'><img id='editarticle' class='edit' src ='images/edit.gif'/></a>
					<div id='article1'><%if(articles.size()>0)out.print(articles.get(0).getContent());%></div>
					<br>
						
					<a href='aboutus.jsp' class='floatright' id ='findmore'>Find out more</a>
					<div style='clear:right'></div>
				</article>

				<div id='contentlower'>
					<ul>
						<li>
							<header>Latest News</header>
							<p>
								<a href='news.jsp#news<%=news.getId()%>'><%=news.getHeader()%></a><br>
								
								<% if(news.getContent().length() > 60)
									out.print(news.getContent().substring(0,60)+"...");
									else out.print(news.getContent());%>
							</p>
							<a href='news.jsp#news<%=news.getId()%>' class='floatright' id='findmore'>Find out more</a>
						</li>
						<li>
							<header>Latest Event</header>
							<p>
								<a href='event.jsp#event<%=e.getId()%>'><%=e.getTitle()%></a><br>
								<% if(e.getDescription().length() > 60)
									out.print(e.getDescription().substring(0,60)+"...");
									else out.print(e.getDescription());%>
							</p>
							<a href='event.jsp#event<%=e.getId()%>' class='floatright' id="findmore">Find out more</a>
						</li>
						<li>
							<header>Services we provide</header>
							<p>
							<p>Past year questions, free software download, PC troubleshooting, video and e-books</p>
							<a href='services.jsp' class='floatright' id ="findmore">Find out more</a>                        
						</li>                
					</ul>
					<div style='clear:both; margin-bottom:10px'></div>
				</div>
				
			</div>
			<div id="modalEdithome1" class="modalForm modalEdit">
				<div>
					<h1>Modify Slider Image</h1>
					<form action='modify' method='post' enctype="multipart/form-data">
					<table>
						<tr>
							<td>
								<img src ='<%=images.get(0).getContent()%>' alt='noImg.jpg' width='195px' height='100px'/>
							<td>
							<td>
								<img src ='<%=images.get(1).getContent()%>' alt='noImg.jpg' width='200px' height='100px'/>
							<td>
							<td>
								<img src ='<%=images.get(2).getContent()%>' alt='noImg.jpg' width='200px' height='100px'/>
							<td>
						</tr>
						<tr>
							<td>
								Choose an image:
							<td>
							<td>
								Choose an image:
							<td>
							<td>
								Choose an image:
							<td>
						</tr>
						<tr>
							<td>
								<input id='upload1' type='file' name='upload1'/>
							<td>
							<td>
								<input id='upload2' type='file' name='upload2'/>
							<td>
							<td>
								<input id='upload3' type='file' name='upload3'/>
							<td>
						</tr>
					</table>
					
					<div>
						<a href='#location'><input type='button' value='Cancel' class='floatright'/></a>
						<a href='#location'><input id='submitimg' type='submit' value='Save' class='floatright'/></a>
						Only choose file for the image that you want to change
						<input type='hidden' name='type' value='slider'/>
					</div></form>
					<div style='clear:right;padding:0;margin:0;'></div>
				</div>
			</div>	
			
			<div id="modalEdithome2" class="modalForm modalEdit">
				<div>
					<h1>Modify Article</h1>
					<textarea id='articlearea' maxlength='1024' rows='12'></textarea>
					<br>
					<div>
						<a href='#mainarticle'><input type='button' value='Cancel' class='floatright'/></a>
						<a href='#mainarticle'><input id='submitarticle' type='button' value='Save' class='floatright'/></a>
						<input type='hidden' name='type' value='article'/>
					</div>
					<div style='clear:right;padding:0;margin:0;'></div>
				</div>
			</div>
			
			<%@ include file="include/footer.inc.jsp" %>
        </div>
    </body>
</html>