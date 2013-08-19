<%@ page import="beans.*" %>
<%@ page import="java.util.*" %>
<%@ page import="conn.DBManager" %>
<%
LinkedList<Article> doyouknow = DBManager.getArticles("nav");
%>
<div id='header'>
	<img id='pekomLogoTitle' src='images/pekomLogoTitle.png' alt='pekomLogoTitle'>
	<img id='banner1' class='banner' src='images/banner1.jpg' alt='banner'>
	<img id='banner2' class='banner' src='images/banner3.jpg' alt='banner'> 
	<!--<img class='banner' src='images/moving-banner.gif' alt='banner'>-->
</div>

<div id='nav'>
	<nav>
		Navigation
	</nav>
	
	<div id="nav_home">
		<a href="homepage.jsp" class="main">Home</a><br>
	</div>
	
	<div id="nav_about">
		<a href="aboutus.jsp" id="aboutus" class="main">About Us</a>
		<ul class="about">
			<li><a href="aboutusvm.jsp">Vision & Mission</a></li>
			<li><a href="aboutusChart.jsp">Organization Chart</a></li>
			<li><a href="aboutuscontact.jsp">Contact Us</a></li>
		</ul><br>
	</div>	
	
	<div id="nav_home">
		<a href="news.jsp" class="main">News</a><br>
	</div>
	
	<div id="nav_events">
		<a href="event.jsp" id="events" class="main">Events</a>
		<ul class="events">
			<li><a href="event.jsp?type=upcoming">Upcoming Events</a></li>
			<li><a href="event.jsp?type=past">Past Events</a></li>
		</ul><br>
	</div>	
	
	<div id="nav_services">
		<a href="services.jsp" id="services" class="main">Services</a>
		<ul class="services">
			<li><a href="servicesPastyear.jsp">Past Year Questions</a></li>
			<li><a href="reference.jsp">References</a></li>
			<li><a href="servicesSoftware.jsp">Software Download</a></li>
			<li><a href="servicesPC.jsp">PC Troubleshooting</a></li>
		</ul><br>
	</div>
<!-- 
	<div id="nav_forum">
		<a href="forum.jsp" class="main">Forum</a>	
	</div> -->
	

	<nav>
		External Links
	</nav>	
	<div id="external">
		<ul>
			<li><a href="http://portal.um.edu.my/">UM portal</a></li>
			<li><a href="http://www.fsktm.um.edu.my/">FSKTM official</a></li>
			<li><a href="http://ilmiah.fsktm.um.edu.my/">Final Year Project</a></li>
		</ul>
	</div>
	
	<nav>
		Join Us
	</nav>
	<div id = "joinus">
	<iframe src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2FPEKOM.UM&amp;send=false&amp;layout=standard&amp;width=168&amp;show_faces=true&amp;font&amp;colorscheme=light&amp;action=like&amp;height=80" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:160px; height:80px;" allowTransparency="true"></iframe><br>
	<a href='https://www.facebook.com/groups/160660824074820/' class='joinfb' style="font-size: 0.88em">Join our facebook group</a>
	<br>
	<br>
	</div>
	
	<nav>
		Do you know?
	</nav>
	
	<div id="doyouknow">
		<a href='#modalEditdoyouknow'><img id='editdoyouknow' class='edit' src ='images/edit.gif' style='right:-5px'/></a>
		<div><%if(doyouknow.size()>0)out.print(doyouknow.get(0).getContent());%></div>
	</div>
	
	
	
</div>