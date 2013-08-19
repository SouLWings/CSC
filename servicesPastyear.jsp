<html lang="en-us">
    <head>
		<%@ include file="include/head.inc.jsp" %>
    </head>
	
	<style>
		#pdiv a:hover{
			text-decoration:underline;
		}
	</style>
	<body>
	
		<div id='wrapper'>
			<jsp:include page = "include/loginCheck.inc.jsp" />
			<%@ include file="include/headernav.inc.jsp" %>
			<div id='content'>
			
				<div id='location'>
					<a href='services.jsp'>Services</a> <img src='images/arrow.jpg'/> Past year questions
				</div>
				
				<% if(session.getAttribute("sessionUser") != null){%>
				
				<article>
					Welcome to the ultimate FSKTM past year question collection ever! You can find your desired past year paper in no time with our complete past year question database. <br>
				</article>
				
<!-- 				<div>
					<table>
					<tr><td>Course name/code:</td><td> <input type='text' name='key' width='200px' list="state"/> </td></tr>
					<tr><td>Year:</td><td> 
					<select width='200px'>
						<option>
							All
						</option>
						<option>
							2012/2013 SEM1
						</option>
						<option>
							2011/2012 SEM2
						</option>
						<option>
							2011/2012 SEM1
						</option>
						<option>
							2010/2011 SEM2
						</option>
						<option>
							2010/2011 SEM1
						</option>
						<option>
							2009/2010 SEM2
						</option>
						<option>
							2009/2010 SEM1
						</option>
						<option>
							Earlier
						</option>
					</select></td></tr></table>
					<br><input type='submit' value="Search" name='submit'/>
				</div> -->
<!--				<table id='bookmark'>
					<tr>
					<td>Major</td>
					<td>
						<a href="#">All</a> 
						<a href="#">AI</a> 
						<a href="#">SE</a> 
						<a href="#">Ntwk</a> 
						<a href="#">MIS</a> 
						<a href="#">Management</a> 
						<a href="#">Multimedia</a>
					</td>
					</tr>
					<tr>
					<td>Year of study</td>
					<td>
						<a href="#">All</a> 
						<a href="#">1</a> 
						<a href="#">2</a> 
						<a href="#">3</a> 
						<a href="#">4</a> 
					</td>
					</tr>
					<tr>
					<td>Year/semester</td>
					<td>
						<a href="#">All</a> 
						<a href="#">2012/2013</a> 
						<a href="#">2011/2012</a> 
						<a href="#">2010/2011</a> 
						<a href="#">2009/2010</a> 
						<a href="#">2008/2009</a> 
						<a href="#">Earlier</a> 
					</td>
					
				</table> -->				
				 <!--<div>
					
					<object id='pdfPreview' data="pdf/test.pdf" type="application/pdf" width="780" height="960">
						<p>It appears you don't have a PDF plugin for this browser.
						You can <a href="pdf/test.pdf">click here</a> to
						download the PDF file.</p>
					</object>
					<br>
				</div> -->
				
				
				<br>
				<div id="title";  style="margin-left:20px; margin-right:20px"><b>WXES1109 Computer Systems and Organization</b></div>
				<div id="pdiv" style='margin-left:50px'>
					<br><a href='pdf/WXES1109_2_2009.pdf'>2009 SEM2</a>
					<br><a href='pdf/WXES1109_1_2012.pdf'>2012 SEM1</a>
					<br><a href='pdf/WXES1109_1_2013.pdf'>2013 SEM1</a>
				</div><br><br>
				
				<div id="title",  style="margin-left:20px; margin-right:20px"><b>WXES1112 Computing Mathematics I</b></div>
				<div id="pdiv" style='margin-left:50px'>
					<br><a href='pdf/WXES1112_2_2010.pdf'>2010 SEM2</a>
					<br><a href='pdf/WXES1112_2_2011.pdf'>2011 SEM2</a>
					<br><a href='pdf/WXES1112_1_2012.pdf'>2012 SEM1</a>
					<br><a href='pdf/WXES1112_1_2013.pdf'>2013 SEM1</a>
				</div><br><br>
				
				<div id="title",  style="margin-left:20px; margin-right:20px"><b>WKES2109 Programming for Web Engineering</b></div>
				<div id="pdiv" style='margin-left:50px'>
					<br><a href='pdf/WKES2109_2_2012.pdf'>2012 SEM2</a>
				</div><br><br>
				
				
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
<datalist id="state">
                    
                    <option value ="WXES1109 Computer Systems and Organization">    
                    <option value ="WXES1112 Computing Mathematics I">
                    <option value ="WXES1116 Programming I">
                    <option value ="WMES1105 Principles of Information Systems">
                    <option value ="WXES1117 Data Structure">
                    <option value ="WAES1102 Principles of Artificial Intelligence">
                    <option value ="WKES1104 Software Engineering I">
					<option value ="WRES1201 Computer System Architecture">
					<option value ="WXES2112 Thinking and Communication Skills">    
                    <option value ="WXES2113 Operating System">
                    <option value ="WXES2114 Database">
                    <option value ="WRES2111 Fundamentals of Network Technology">
                    <option value ="WKES2107 Human Computer Interaction">
                    <option value ="WKES2108 Software Project Management">
                    <option value ="WKES2109 Programming for Web Engineering">
					<option value ="WKES2110 Object-Oriented Modeling">
					<option value ="WKES3202 Software Requirements Engineering">
					<option value ="WKES3106 Software Quality">    
                    <option value ="WKES3109 Software Architecture and Design Paradigms">
                    <option value ="WKES3206 Software Engineering II">
                    <option value ="WKES3110 Software Verification and Validation">
                    <option value ="WKES2401 Programming Language Concepts">
                    <option value ="WKES3108 Software Evolution and Configuration">
                    <option value ="WKES3203 Advance Programming">
					<option value ="WKES3204 Software Process and Metrics">
					<option value ="WKES3311 Analysis Algorithm">    
                    <option value ="WKES3403 Automated Theory">
                    <option value ="WAES2107 Fundamentals of Cognitive Science">
                    <option value ="WMES2271 Database Administration">
                    <option value ="WAES2103 Expert Systems">
                    <option value ="WAES2104 Mathematics for Intelligent Systems">
                    <option value ="WAES2106 Prolog Programming">
					<option value ="WAES2107 Fundamentals of Cognitive Science">
					<option value ="WAES3105 Machine Learning Methods">
					<option value ="WMES2112 System Analysis, Modeling and Design">
					<option value ="WAES2108 Natural Language Processing and Generation">
					
					<option value ="WAES3102 Fundamentals of Robot Intelligence">    
                    <option value ="WAES3104 Fundamentals of Artificial Neural Network">
                    <option value ="WAES3106 Image Processing">
                    <option value ="WAES3206 Fuzzy Logic">
                    <option value ="WAES3306 Intelligence of Information Systems">
                    <option value ="WAES3308 Numerical Methods">
                    <option value ="WAES3370 Artificial Intelligence (AI) Software Tools">
					<option value ="WMES3110 Intelligent Agents in Information System">    
                    <option value ="WMES3302 Decision Support System">
					
                    <option value ="WRES1102 VHDL">
                    <option value ="WRES1103 Digital Design">
                    <option value ="WRES2112 Network Security">
                    <option value ="WRES2203 Advanced Network Technology">
                    <option value ="WRES2109 Mathematics in Networking">
					<option value ="WRES3107 Microprocessor">
					<option value ="WRES3109 Principle in Distributed Systems">
					<option value ="WRES3108 Enterprise Network Design and Management">    
                    <option value ="WRES3405 Mobile Computing">
                    <option value ="WRES3104 Network Modeling And Simulation">
                    <option value ="WRES3301 Cryptography">
                    <option value ="WRES3305 Emergence Network Technology">
                    <option value ="WRES3310 Intelligent Network Technology">
                    <option value ="WRES3315 Embedded Programming System">
					
					
					<option value ="WMES2107 Statistical Application in Information Technology">
					<option value ="WMES2111 Open Source Programming">    
                    <option value ="WMES2205 Information System Management">
                    <option value ="WMES2109 Organizational Theory">
                    <option value ="WMES3106 Information System Control and Security">
                    <option value ="WMES3107 Information System Auditing">
                    <option value ="WMES3108 Information Technology Project Management">
                    <option value ="WMES3110 Intelligent Agent in Information System">
		<option value ="WMES3109 Technopreneurship">
		<option value ="WMES3104 Accounting Management System">
		<option value ="WMES3314 Electronic Commerce">
		<option value ="WMES3318 Knowledge Management">
		<option value ="WMES3320 Fundamentals of Data Mining and Warehousing">
                    
                    </datalist>