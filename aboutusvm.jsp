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
					<a href="aboutus.jsp">About Us</a> <img src='images/arrow.jpg'/> Vision & Mission
				</div>
				
				<div id='inner'>
					<div id='vision'>
						<p id="title"><b>Vision</b></p>
						<ul type='none'>
							<li>To generate leadership excellence towards professional management based on personality stability and academic.</li>
						</ul>	
					</div>
					
					<div id='mission'>
						<p id="title"><b>Mission</b></p>
						<ul>
							<li>We empower Computer Science Club of the University of Malaya(PEKOM) to be a continuous and strong association.</li>
							<li>We promote leadership excellence and organizational management stability.</li>
							<li>We care for the welfare of the Faculty of Computer Science and Information Technology.</li>
							<li>We establish brotherhood between faculty members and encourage racial integration.</li>
							<li>We continuously strive to increase the exposure to computing technology and information technology among the associations/bodies/forces in the University of Malaya.</li>	
						</ul>
					</div>
					
					<div id='objective'>
						<p id="title"><b>Objective</b></p>
						<ul>
							<li>To be a mediator between the administration and the students of FSKTM.</li>
							<li>To develop the leadership & entrepreneurship of PEKOM members.</li>
							<li>To create a culture of healthy competition.</li>
							<li>To unite the students of the University of Malaya.</li>
							<li>To increase the students' awareness towards their environment.</li>					
						</ul>
					</div> 
				</div>
				
				<div style='clear:both; margin-bottom:10px'></div>
			</div>
			<%@ include file="include/footer.inc.jsp" %>
        </div>
    </body>
</html>