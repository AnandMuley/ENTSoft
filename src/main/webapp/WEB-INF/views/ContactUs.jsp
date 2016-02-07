<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" ng-app="ICareUI">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<%@include file="Include.jsp"%>
</head>
<body class="site-body">
	<div class="container">
		<%@include file="Header.jsp"%>
		<div id="middle_content" style="height: 680px;">
			<div id="heading_strip">
			<img src="resources/images/icon.png" style="margin-right:13px; float:left; margin-top:0px; margin-left:19px;">Contact Us</div>
			
			<img src="resources/images/contactus-banner.png" style="height: 200px;
			width: 864px; margin-left: 40px;">
			
			    
			     
			  
			  <div class="BoxDiv1" style="width: 448px;
			height: 378px;
			margin-left: 15px;
			border-right: 1px solid rgb(205, 208, 211); margin-left: 40px;">
			
			   <div style="height:500px;width:500px;float:left;font-size:12px;">
			       <h3 style="font-size: 20px;
			color: #5959E2;
			font-family: calibri;
			border-bottom: 1px dotted;
			margin-top: -1px;
			letter-spacing: 1px;
			padding-bottom: 10px;
			width: 413px;
			margin-bottom: 6px;">ENQUIRY FORM</h3>
						<form action="mail.php" method="post">
			        <table style="margin-left:10px; width: 97%; height: 350px;">
			       <tbody><tr>
			         <td class="style4"></td>
			         <td style="font-family: calibri;font-size: 16px;">
			          
			          </td>
			       
			        </tr>
			        <tr valign="middle">
			            <td class="style5">PERSON'S  NAME*</td>
			            <td>
			                : <input type="text" name="fname">
			             </td>
			        </tr>
			        
			        
			        <tr valign="middle">
			            <td class="style5">CONTACT  NO*</td>
			            <td>
			             : <input type="text" name="cno">
			            </td>
			        </tr>
			        <tr valign="middle">
			            <td class="style5">EMAIL  ID*</td>
			            <td>
			             : <input type="text" name="em">
			            </td>
			        </tr>
			        <tr valign="top">
			            <td class="style5">COMPLAINTS</td>
			            <td>
			              : <textarea name="comp"></textarea>
			            </td>
			        </tr>
			        <tr valign="top">
			            
			            <td class="style5">PREFERRED DATE</td>
			            <td>
			              : <input type="date" name="dt">
			  
			            </td>
			        </tr>
			        <tr><td class="style4">
			     </td>
			        </tr><tr valign="top">
			            <td class="style4"></td>
			            <td>
			                <button type="submit" style="width:100px;height:28px; border:none; background-image:url(resources/images/submit.png)"></button>
			             </td>
			        </tr>
			              
			        
			         
			        </tbody></table>
			</form>        
			        
			        </div>
			
			
			
			
			
			
			
			 </div>   
			     
			   <div class="BoxDiv1" style="width: 400px;
			height: 380px;
			margin-left: 30px;">
			   
			   
			<h3 style="font-size: 20px;
			color: #5959E2;
			font-family: calibri;
			border-bottom: 1px dotted;
			margin-top: -1px;
			letter-spacing: 1px;
			padding-bottom: 10px;
			width: 413px;
			margin-bottom: 6px;">ADDRESS</h3>
			<table>
			<tbody><tr>
			<td><img src="resources/images/add_logo.png"></td>
			</tr>
			</tbody></table>
			<table style="margin-top: 15px; height: 150px; margin-left: 12px;">
			<tbody><tr valign="top">
			<td class="style3">NAME </td>
			<td style="font-family:Calibri;">: Dr Prasun Mishra</td>
			</tr>
			<tr valign="top">
			<td class="style3">EMAIL</td>
			<td style="color:Blue; font-family:Calibri;">: entprasun@gmail.com &nbsp;</td>
			</tr>
			<tr valign="top">
			<td class="style3">Address</td>
			<td style="font-family:Calibri;">: First floor, GS Tower, <br>
			&nbsp;  Opp market yard Bus Depot,<br> &nbsp; Above Sadhna Sahkari Bank,<br>
			&nbsp; Market Yard, Pune 411037.</td>
			</tr>
			<tr valign="top">
			<td class="style3">PHONE</td>
			<td style="font-family:Calibri;">: For Contact <br>&nbsp; 9881676449 / 9923065830</td>
			</tr>
			
			<tr valign="top">
			<td class="style2"></td>
			<td style="font-family:Calibri;">&nbsp; For Appointment <br>&nbsp; 8446140833</td>
			</tr>
			
			</tbody></table>
			
			
			
			
			   
			   </div>  
			   
			   
			   
			   
			   
			   
			
			
			   
			   
			    
			
			 </div>
		<%@include file="Footer.jsp"%>
	</div>
</body>
</html>