<html lang="en-us">
    <head>
		<%@ include file="include/head.inc.jsp" %>
		<style>
			body{
				color:#696969;
				font-family:Calibri;
			}
			
			#title{
				font-size:14pt;
				background-color:rgb(246,244,245);
				padding:17px;
				border-radius:10px 10px 10px 10px;
			}
			
			#stylediv{
				background:-webkit-linear-gradient(#FAFFFF, #D7EFFF);				
				border-radius: 10px 10px 10px 10px; 
				margin-left:20px; 
				margin-right:20px; 
				padding:15px;
			}
			
		</style>
		
    </head>
	<body>
	
		<div id='wrapper'>
			<jsp:include page = "include/loginCheck.inc.jsp" />
			<%@ include file="include/headernav.inc.jsp" %>
			<div id='content'>
			
				<div id='location'>
					<a href='services.jsp'>Services</a> <img src='images/arrow.jpg'/> Software Download
				</div>
				
				<% if(session.getAttribute("sessionUser") != null){%>
				
				<div id="sdiv">
					<img src='images/banner-download.jpg' alt='download' width='100%' height='150px'/>
					
					<p id="title"><b>Computer Science</b></p>	
						<div id="stylediv">
							<img src="images/netbeans-logo.png" alt="netbean" width="65" height="65" style="float:left"><br>
								<div style="padding-left:90px"><b style="font-size:20px">Netbean</b><br>
									<a href="https://netbeans.org/downloads/" style="text-decoration:none">https://netbeans.org/downloads/</a></div>
							<p>Quickly and easily develop desktop, mobile and web applications with Java, HTML5, PHP, C/C++ and more.</p>
						</div><br>
						
						<div id="stylediv">
							<img src="images/oracle.png" alt="oracle" width="80" height="70" style="float:left"><br>
								<div style="padding-left:90px"><b style="font-size:20px">Oracle</b><br>
									<a href="http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html" style="text-decoration:none">http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html</a>
								</div>	
							<p>Oracle Database 10g is the first database designed for enterprise grid computing, the most flexible and cost effective way to manage information and applications.</p>
						</div>
						
					<p id="title"><b>Software Engineering</b></p>	
						<div id="stylediv">
							<img src="images/mysql.png" alt="mysql" width="80" height="70" style="float:left"><br>
								<div style="padding-left:90px"><b style="font-size:20px">mySQL</b><br>
									<a href="http://dev.mysql.com/downloads/" style="text-decoration:none">http://dev.mysql.com/downloads/</a>
								</div>	
							<p>MySQL is the most trusted and depended-on open source database platform in use today. As such, 9 out of the top 10 most popular and highly-trafficked websites in the world rely on MySQL primarily due to its ubiquity across heterogeneous platforms and application stacks and for its well-known performance, reliability and ease of use.</p>
						</div>
						
					<p id="title"><b>Networking</b></p>		
						<div id="stylediv">
							<img src="images/cisco.png" alt="cisco" width="80" height="70" style="float:left"><br>
								<div style="padding-left:90px"><b style="font-size:20px">Cisco</b><br>
									<a href="http://www.cisco.com/web/learning/netacad/course_catalog/PacketTracer.html" style="text-decoration:none">http://www.cisco.com/web/learning/netacad/course_catalog/PacketTracer.html</a>
								</div>	
							<p>Packet Tracer supplements physical equipment in the classroom by allowing students to create a network with an almost unlimited number of devices, encouraging practice, discovery, and troubleshooting.</p>
						</div><br>
								
						<div id="stylediv">
							<img src="images/altera.png" alt="altera" width="80" height="70" style="float:left"><br>
								<div style="padding-left:90px"><b style="font-size:20px">ModelSim-Altera Edition Software</b><br>
									<a href="http://www.altera.com/products/software/quartus-ii/modelsim/qts-modelsim-index.html" style="text-decoration:none">http://www.altera.com/products/software/quartus-ii/modelsim/qts-modelsim-index.html</a>
								</div>
							<p>Recommended for simulating all FPGA designs (Arria?, Cyclone?, Stratix? series FPGA designs and MAX? series CPLDs)</p>
						</div>

					<p id="title"><b>Information Technology</b></p>
						<div id="stylediv">
							<img src="images/easyphp.png" alt="easyphp" width="80" height="70" style="float:left"><br>
								<div style="padding-left:90px"><b style="font-size:20px">EasyPHP DevServer</b><br>
									<a href="http://www.easyphp.org/easyphp-devserver.php" style="text-decoration:none">http://www.easyphp.org/easyphp-devserver.php</a>
								</div>	
							<p>EasyPHP DevServer (for PHP development) installs a complete WAMP environment for PHP developers including PHP, Apache, MySQL, PhpMyAdmin, Xdebug.</p>
						</div><br>
						
						<div id="stylediv">
							<img src="images/ezphp.png" alt="ezphp" width="80" height="70" style="float:left"><br>
								<div style="padding-left:90px"><b style="font-size:20px">EZPHP</b><br>
									<a href="http://ezphp.sourceforge.net/" style="text-decoration:none">http://ezphp.sourceforge.net/</a>
								</div>	
							<p>EZPHP is an easy-to-use MVC-based framework allowing you to develop applications much faster than doing it from scratch by providing you with ready-made libraries and utility classes.</p>
						</div>
					
				</div>
				
				<%}else{%>
				
				<article>
					Please log in first in order to enjoy this service.
				</article>
				
				<%}%>
				
				<div style='clear:left; margin-bottom:10px'></div>
			</div>
        
			<%@ include file="include/footer.inc.jsp" %>
		</div>
    </body>
</html>