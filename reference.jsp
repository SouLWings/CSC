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
					<a href="services.jsp">Services </a><img src='images/arrow.jpg'/> References
				</div>
				
				<% if(session.getAttribute("sessionUser") != null){%>
				<div id = "video">
					<h2 id = "title">HTML5 Videos</h2>
					<ul>
						<li><a href = "video/customshapes.mp4">Make sweet custom shapes!</a></li>
						<li><a href = "video/programpretty.mp4">Make the web storage program pretty</a></li>
						<li><a href = "video/pseudoclass.mp4">Negation pseudo-class</a></li>
					</ul>
					
					<h2 id = "title">JavaScript Videos</h2>
					<ul>
						<li><a href = "http://thenewboston.org/watch.php?cat=10&number=1">Introduction to JavaScript</a></li>
						<li><a href = "http://thenewboston.org/watch.php?cat=10&number=3">Variables</a></li>
						<li><a href = "http://thenewboston.org/watch.php?cat=10&number=6">Functions</a></li>
						<li><a href = "http://thenewboston.org/watch.php?cat=10&number=15">If/else statements</a></li>
					</ul>
				</div>
			
				<div id = "ebooks">
					<h2 id = "title">E-books</h2>
					<table id = "booktable">
						<tr><div id="book1">
							<td><a href = "javabook.jsp">Java An Introduction to Problem Solving and Programming (6th Edition)</a><br><br>
							<a href ="javabook.jsp"><img src = "images/java.jpg" width="200px" height="250px"></a><br>
						</div></td>
						<td><div id="book2">
							<a href = "datastruc.jsp">Data Structures and Algorithms in Java 4th Edition</a><br><br>
							<a href="datastruc.jsp"><img src = "images/datastruc.jpg" width="200px" height="250px"></a><br>
						</div></td>
						<td><div id="book3">
							<a href ="is.jsp">Principles of Information System 9th Edition</a><br><br>
							<a href = "is.jsp"><img src = "images/is.jpg" width="200px" height="250px"></a><br>
						</div></td></tr>
					</table>
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