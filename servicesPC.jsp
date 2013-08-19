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
				
			#flip, #flip2,#flip3, #flip4
			{
				margin-left:20px;
				margin-right:20px;
				padding:5px;
				padding-left:20px;
				background-color:lightblue;
				border-radius: 10px 10px 10px 10px;
			}


			#panel, #panel2, #panel3, #panel4
			{
				display:none;
				margin-left:40px;
				margin-right:20px;
				padding:5px;
				background-color:white;
				border-radius: 10px 10px 10px 10px;
			}	
			
			#flip:hover, #flip2:hover, #flip3:hover, #flip4:hover{
				cursor:pointer;
				color:white;
			}
		</style>
		
		<script>
			//for servicesPc page

			$(document).ready(function(){
			$("#flip").click(function(){
			$("#panel").slideToggle("slow");
			});
			});

			$(document).ready(function(){
			$("#flip2").click(function(){
			$("#panel2").slideToggle("slow");
			});
			});

			$(document).ready(function(){
			$("#flip3").click(function(){
			$("#panel3").slideToggle("slow");
			});
			});

			$(document).ready(function(){
			$("#flip4").click(function(){
			$("#panel4").slideToggle("slow");
			});
			});
		</script>
    </head>
	<body>
	
		<div id='wrapper'>
			<jsp:include page = "include/loginCheck.inc.jsp" />
			<%@ include file="include/headernav.inc.jsp" %>
			<div id='content'>
			
				<div id='location'>
					<a href='services.jsp'>Services</a> <img src='images/arrow.jpg'/> PC Troubleshooting
				</div>
				
				<% if(session.getAttribute("sessionUser") != null){%>
				
				 <div>
					<img src='images/troubleshooting.jpg' alt='' width='95%' height='150px'/>
					
					<p id="title"><b>PC Troubleshooting Service</b></p>
					
						<div style="padding-left:20px;">
						
						<p>Having trouble with computer? We are here to help you.<br>Kindly contact our troubleshooter for help.</p>
						
						<img src="images/troubleshooter.jpg" alt="troubleshooter" width="90" height="90" style="float:left">
							<div  style="margin-left:120px">
								<p>Alif Jamaluddin</p>					
								<p>013-3042654</p>
								<p><a href="mailto:alifJ91@hotmail.my" style="color:darkblue; text-decoration:none">alifJ91@hotmail.my</a></p>
								<p><a href="http://www.facebook.com/alif.jamaluddin?fref=ts"><img src="images/fbIcon.png" alt="fbIcon" width="25 height="25"></a> <a href="https://www.facebook.com/alif.jamaluddin?fref=ts" style="text-decoration:none">Find Alif on Facebook</a></p>
							</div>
						</div>
					
					<p id="title"><b>Basic computer troubleshooting</b></p>
						<div id="flip"><p><b>"I have problems in Windows after installing new software."</b></p></div>
						<div id="panel"><p>Reinstall or uninstall the program<br>Check for software updates or new versions</p></div><br>
						
						<div id='flip2'><p><b>"My computer is running slow what steps can I do to fix it?"</b></p></div>
						<div id='panel2'><p>
						Uninstall unneeded programs <br>
						Run Disk Cleanup<br>
						Defragment the drive more often<br>
						Reboot your computer if it has not been shut down for a long time<br>
						Clear up as much hard drive space as possible<br>
						Disable unneeded background programs and services<br>
						Scan for viruses, malwares, spywares<br>
						Clean up the registry and errors using CCleaner<br>
						Disable Animations and Appearance Overhauls to maximize performance<br>
						Update Windows<br>
						Update your drivers<br>
						Make sure there is a good cooling system for the computer<br>
						Memory upgrade<br>
						Hard drives upgrade<br>
						</p></div><br>
						
						<div id='flip3'><p><b>"Why do Windows programs stop responding"</b></p></div>
						<div id='panel3'><p>To recover from a program that has stopped responding, a user can press the CTRL + ALT + DEL keys on his or her keyboards to open the "Close Program" window or open the "Task Manager" window and click the "End Task" button to terminate the program. If another window opens, click the "End Task" button again to confirm stopping that program.<br><br>It is important to realize that when a program stops responding any work that has not been saved will more than likely be lost when end tasking a program. Unfortunately, there is no alternative.</p></div><br>
						
						<div id='flip4'><p><b>"How do I fix the Windows blue screen errors?"</b></p></div>
						<div id='panel4'><p>Before fixing a Microsoft Windows blue screen or blue screen of death error (BSoD), you must first identify what error it is. Since there are different blue screen errors.<br><br>Note: If you're getting a blue screen and then your computer immediately reboots without being able to read the text in the blue screen, follow the steps below. If you're unable to get into Windows to perform the steps below, boot the computer into Safe Mode.<br><br>From the desktop, right-click on My Computer.<br>Click the Properties option.<br>In the System Properties window click the Advanced tab.<br>In Advanced click the Settings button under Startup and Recovery.<br>In the Startup and Recovery window uncheck the Automatically restart check box.<br>Click Ok.<br><br><b>Blue screen errors</b><br><br>Windows NT, 2000, XP, Vista, and later versions of Windows will have a blue screen error that's similar to the example shown below. These error messages often contain more detailed information, and will contain information that can be searched for and found. If you're not getting a blue screen error that looks like the below skip to the next Fatal exception section.<br><br>Identify the blue screen by locating a line containing all capital letters with underscores instead of spaces, such as the above example, BAD_POOL_HEADER. Write this information down. If you do not see anything written in all caps with underscores like this, skip this step.<br><br>Get either the STOP: error message at the top of the error, or in the \"Technical Information:\" portion of the error. For example, in the above error it's STOP: 0x00000019 ... write the first potion of this error message down.<br>Finally, if technical information is shown write down the file and the address.<br><br>Once you have the above information you can start troubleshooting the issue. Below are common blue screen errors and links to pages that contain the troubleshooting steps for each of these errors. If your error is not listed in the below section search for the error you wrote down.<br><br>BAD_POOL_HEADER<br>DRIVER_IRQL_NOT_LESS_OR_EQUAL<br>DRIVER_POWER_STATE_FAILURE<br>INACCESSIBLE_BOOT_DEVICE<br>IRQL_NOT_LESS_OR_EQUAL<br>NTFS_FILE_SYSTEM<br>PAGE_FAULT_IN_NONPAGED_AREA<br>STATUS_IMAGE_CHECKSUM_MISMATCH<br>THREAD_STUCK_IN_DEVICE_DRIVER<br>UNEXPECTED_KERNEL_MODE_TRAP<br>UNKNOWN_HARD_ERROR<br><br><b>Fatal exceptions</b><br><br>Many of the blue screen error messages you'll encounter with earlier versions of Windows will be fatal exception error messages or Fatal 0E messages. If your blue screen message starts out with A fatal exception 0E ... or An exception ... you're encountering this error. For these blue screen errors follow the fatal exception error troubleshooting steps.</p></div><br>
						
						
						
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