<%
Cookie c = new Cookie("sample", "asdd");
response.addCookie(c);
%>
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
					<a href="aboutus.jsp">About Us</a> <img src='images/arrow.jpg'/> Organization Chart
				</div>
				
				<div id="inner">
					<p id="title"><b>Organization Chart</b></p>
					<div id='chartContent'>
					<img id="chart" src="images/chart.jpg" alt="Organizational Chart" width="600" height="500"/>
				</div>
	
				
				<div style='clear:both; margin-bottom:10px'></div>
			</div>
		</div>	
			<%@ include file="include/footer.inc.jsp" %>
       
    </body>
</html>