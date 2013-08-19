<meta charset="utf-8">
<%@ page import="beans.*" %>
<%
	session.setAttribute("fade", 0.2);
	session.setAttribute("hover", 0.9);
%>
<title>PEKOM</title>
<link rel='stylesheet' href='style.css'/>
<link rel='stylesheet' href='style2.css'/>
<link rel='shortcut icon' href='http://unicoder.com.my/sites/default/files/front%20page/images/alan_logo2.gif'/>
<script src='jquery.js'></script>
<script src='hoverintent.js'></script>

<script>
	function validate(txt) {
		txt.value = txt.value.replace(/[^a-zA-Z 0-9\n\r]+/g, '');
	}
	$(document).ready(function()
	{						
		$("#nav_about").hoverIntent(function()
		{
			$(".about").slideDown(200);
		},
		function()
		{
			$(".about").slideUp(200);
		});
		
		$("#nav_services").hoverIntent(function()
		{
			$(".services").slideDown(200);
		},
		function()
		{
			$(".services").slideUp(200);
		});
		
		$("#nav_events").hoverIntent(function()
		{
			$(".events").slideDown(200);
		},
		function()
		{
			$(".events").slideUp(200);
		});
		
		$(".close, .roll-link").click(function()
		{
			$("#loginmsg, #registermsg, .modalmsg").text("");
		});
		
		var over = "0.9";
		var out = "0.2";
		
		$("#doyouknow").mouseover(function(){
			$("#editdoyouknow").css("opacity", over);
		});
		
		$("#doyouknow").mouseout(function(){
			$("#editdoyouknow").css("opacity", out);
		});

		
		$("#editdoyouknow").click(function()
		{
			$("#doyouknowarea").val($("#doyouknow > div").text());
		});	
		
		$("#submitdoyouknow").click(function(){
			$.get(("modify?type=article&location=nav&value="+$("#doyouknowarea").val()),function(data,status){
				if(data=='pass')
					$("#doyouknow > div").text($("#doyouknowarea").val());
				else
					alert("Update failed");
			});
		});		
		
		$("#loginForm").submit(function()
		{
			if($("#loginForm input:first").val() == "" || $("#loginForm input:nth-child(2)").val() == ""){
				$("#loginmsg").text("Please enter both username and password");
				return false;
			}
		});
		
		
		var regisflag = true;
		var usernameflag = true;
		var matricflag = true;
		
		$("#input1").blur(function(){
			$.post("register",{username:$(this).val()},function(data,status){
				if(data != "pass"){
					alert("Username exist. Please enter another username.");
					userflag = false;
				}
				else{
					userflag = true;
				}
			});
			if($("#input1").val().length < 3 || $("#input1").val().length > 16){
				alert("Username length must between 3 and 16 character long.");
			}
			if($.isNumeric($("#input1").val())){
				alert("Invalid username");
			}
		});
		
		//when second password lsoe focus
		$("#input3").blur(function(){
			if($("#input3").val() != $("#input2").val()){
				alert("Repeated password not match");
			}
		});
		
		//when registration matric number lose focus
		$("#input8").blur(function(){
			$.post("register",{type:"check",matric:$(this).val()},function(data,status){
				if(data!='pass'){
					alert("It appears that your matric number does not exist in the paid member list or you already registered. Only paid member can register for an account in this website. Please pay RM30 to any committee member in order to be able to register in this website.");
					matricflag = false;
				}
				else
					matricflag = true;
			});
		}); 
			
/* 		$.post("register",{type:"check",username:$("#input1").val()},function(data,status){
			alert('check username');
			if(data != 'pass'){
				$("#registermsg").append("Username exist. Create another username.<br>");
				regisflag = false;
			}
		});
		
		$.post("register",{type:"check",matric:$("#input8").val()},function(data,status){
			alert("reply for matric check "+data);
			if(data!='pass'){
				$("#registermsg").append("You are not a paid member yet.<br>");
				regisflag = false;
			}
		});
		 */
		$("#registerForm").submit(function()
		{
			$("#registermsg").text('');
			regisflag = true
			if($("#input1").val().length < 3 || $("#input1").val().length > 16){
				$("#registermsg").append("*Username too short.<br>");
				regisflag = false;
			}
			
			if($.isNumeric($("#input1").val())){
				$("#registermsg").append("*Username cannot be numeric.<br>");
				regisflag = false;
			}
			
			if($("#input3").val() != $("#input2").val()){
				$("#registermsg").append("*Repeated password not match.<br>");
				regisflag = false;
			}
			if(!matricflag)
				$("#registermsg").append("*Matric number not in the paid list.<br>");
			if(!userflag)
				$("#registermsg").append("*Username exist. Create account with another username.<br>");
			return regisflag && userflag && matricflag;
		});
		
		$("#reset").click(function()
		{
			if($("#modalLogin input[name='username']").val() == ''){
				$("#loginmsg").text("Please fill in your username first");
			}
			else{
				$(this).attr("href", "#modalMessage")
				$(".modalmsg").text("A password reset confirmation email will be sent to your email shortly.").show();
			}
		});
		
		$("input[type='file']").change(function(){
			var ext = this.value.match(/\.([^\.]+)$/)[1];
			if(ext != "jpg" && ext != "bmp" && ext != "png" && ext != "gif" && ext != "jpeg" && ext != "JPEG" && ext != "PNG" && ext != "BMP" && ext != "GIF" && ext != "JPG")
			{
				window.alert("Sorry, you can only choose fime with jpg, bmp, png, gif file extension.");
				this.value = null;
			}
		});
		
		<%
			if(session.getAttribute("sessionUser") == null || session.getAttribute("sessionUser") != null && ((User)session.getAttribute("sessionUser")).getUserType().equalsIgnoreCase("member")){
		%>
			$(".edit").remove();
			$(".modalEdit").remove();
		<%}else{%>
			$("input[name='addmatric']").click(function()
			{
				if($("input[name='newmatric']").val().length > 8)
				{
					$.post("register",{type:"insert",matric:$("input[name='newmatric']").val()},function(data,status){
						alert(data);
					});
				}
				else
				{
					alert("Matric number too short");
				}
			});
		<%}%>
	});
	var y=1
	window.setInterval(function()
	{	
		if(y==1)	
		{
			$("#banner1").css("opacity", "0");				
			$("#banner2").css("opacity", "1");			
			y=2;
		} 
		else 
		{
			$("#banner1").css("opacity", "1");				
			$("#banner2").css("opacity", "0");	
			y=1;	
		}								 
	},3000);
</script>
		<!--
		$("#modalRegister input").focus(function(){window.location.href = '#modalLogin';
			$(this).css("box-shadow","0px 0px 15px #77ddff");
		});
		$("#modalRegister input").blur(function(){
			$(this).css("box-shadow","0px 0px 0px #77ddff");
		});
		document.location.href="your URL";
		
		-->