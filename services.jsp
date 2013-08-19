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
                    Services <img src='images/arrow.jpg'/>
                </div>
				
                <div class='section'>
                    <h4><a href="servicesPastyear.jsp">Pass Year Question & Reference</a></h4>
                    <p>Are you finding the pass year question to prepare for your exam? Or are you looking at some references for your study? 
                    Here provide you the pass year questions and various types of tutorial video and e-books that maybe helpful. </p>
                    <p class = 'more'><small><a href="servicesPastyear.jsp" id="findmore">More info-</a></small></p>
                </div><br>
				
                <div class='section'>
                    <h4><a href="servicesPC.jsp">Free PC Troubleshoot or Repair</a></h4>
                    <p>Are you having pc problems and do not know what to do? Here provide you some free pc trobleshoot or repair for your pc.  </p>
                    <p class = 'more'><small><a href="servicesPC.jsp" id="findmore">More info-</a></small></p>
                </div><br>
				
                <div class='section'>
                    <h4><a href="servicesSoftware.jsp">Software Download</a></h4>
                    <p>Are you finding project related software? Here provide you the software that are free and useful to your work.</p>
                    <p class = 'more'><small><a href="servicesSoftware.jsp" id="findmore">More info-</a></small></p>
                </div><br>
				
                <div class='section'>
                    <h4><a href="reference.jsp">Reference</a></h4>
                    <p>Need some references for your study? 
                    Here, we provide you various types of tutorial videos and e-books that you might find it helpful.</p>
                    <p class = 'more'><small><a href="reference.jsp" id="findmore">More info-</a></small></p>
                </div><br>

				<div style='clear:both; margin-bottom:10px'></div>
			</div>
			<%@ include file="include/footer.inc.jsp" %>
        </div>
    </body>
</html>