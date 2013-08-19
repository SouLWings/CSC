<html lang="en-us">
    <head>
		<%@ include file="include/head.inc.jsp" %>
    </head>
	<body>
		<div id='wrapper'>
			<jsp:include page = "include/loginCheck.inc.jsp" />
			<%@ include file="include/headernav.inc.jsp" %>
			<div id='content'>
			
				<div id='location'>
					<a href ="aboutus.jsp">About Us </a><img src='images/arrow.jpg'/> Contact
				</div>
				
				<div id="inner">
					<p id="title"><b>Contact Information</b></p>
					<div id="contact">
						<p>First Floor, Block A<br>Faculty of Computer Science and Information Technology<br>University of Malaya<br>50603 Lembah Pantai<br>Kuala Lumpur<br>MALAYSIA<br><br>Tel : +603-79676300<br>Fax : +603-79579249</p>
						
						<p><a href="http://www.facebook.com/PEKOM.UM"><img src="images/fbIcon.png" alt="fbIcon" width="25 height="25"></a> <a href="http://www.facebook.com/PEKOM.UM" style="text-decoration:none">Find us on Facebook</a></p>
					</div>
					
					<p id="title"><b>Our office's location</b></p>
					<div id="contact">
						<p >Faculty of Computer Science and Information Technology<br>First Floor, Block A</p>
						<img id="fskMap" src="images/fskMap.jpg" alt="OfficeLocationMap" width="500" height="400">
					</div>	
				</div>
				
	
				
				<div style='clear:both; margin-bottom:10px'></div>
			</div>
			<%@ include file="include/footer.inc.jsp" %>
        </div>
    </body>
</html>