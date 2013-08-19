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
					References --> E-book
				</div>

				<% if(session.getAttribute("sessionUser") != null){%>
				<div id="bookcontent">
					<h2>Principles of Information System 9th Edition</h2>
					<object data='pdf/is.pdf' type='application/pdf' id='javabook' height = "800" width="600"></object>	
				</div>

				
				<%}else{%>
				
				<article>
					Please log in first in order to enjoy this service.
				</article>
				
				<%}%>
				<div style='clear:both; margin-bottom:10px'></div>
			</div>
			<%@ include file="include/footer.inc.jsp" %>
        </div>
    </body>
</html>