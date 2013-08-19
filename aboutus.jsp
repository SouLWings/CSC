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
					About Us <img src='images/arrow.jpg'/>
				</div>
				
					<p id="title"><b>History</b></p>
					
						<div id="historyDetail">	
							<p style="text-indent:50px">Computer Science Club (PEKOM) was established on 9 November 2012. Every student from Faculty of Computer Science and Information Technology (FSKTM) was automatically a member of PEKOM.</p>
						
								<div id="pekomPic">
									<img src="images/pekom.png" alt="PEKOM" width="500" height="130"/>
								</div>
						
							<p>PEKOM's vision is to generate leadership excellence towards professional management based on personality stability and academic. Computer Science Club of the University of Malaya(PEKOM) is expected to be a continuous and strong association. PEKOM promotes leadership excellence and organizational management stability. Besides this, PEKOM cares for the welfare of the Faculty of Computer Science and Information Technology. Brotherhood between faculty members is establised and racial integration is encouraged. PEKOM is formed to continuously increase the exposure to computing technology and information technology among the associations/bodies/forces in the University of Malaya.</p>
						</div>
					
					<div id=contactDetails>
						<p id="title"><b>President</b></p>
						<img id="idzwanPic" src="images/idzwan.png" alt="Idzwan's pic" width="130" height="160">
					
							<div id = details>
								<p>Idzwan Fariz Tan</p>
								<p>012-9133649</p>
								<p><a href="mailto:idzwan_fariz@gmail.com" style="color:darkblue; text-decoration:none">idzwan_fariz@gmail.com</a></p>
								<p><a href="http://facebook.com/idzwanfariz"><img src="images/fbIcon.png" alt="fbIcon" width="25 height="25"></a> <a href="http://facebook.com/idzwanfariz" style="text-decoration:none">Find Idzwan on Facebook</a></p>
							</div>
					</div>
				
				<div style='clear:both; margin-bottom:10px'></div>
			</div>
			<%@ include file="include/footer.inc.jsp" %>
        </div>
    </body>
</html>