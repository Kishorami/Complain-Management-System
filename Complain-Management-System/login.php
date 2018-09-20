<?php
require_once './library/config.php'; //config file include kortesi
require_once './library/functions.php'; // shob gula function include kortesi

$errorMessage = '&nbsp;';   

if (isset($_POST['txtUserName'])) {
	$result = doLogin();   //calling the login method.
	
	if ($result != '') {
		$errorMessage = $result;
	}
}

?>
<html>
<head>
<title>Complain Management System- Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="include/admin.css" rel="stylesheet" type="text/css">
<link href="<?php echo WEB_ROOT;?>include/style.css" rel="stylesheet" type="text/css">
<link href="<?php echo WEB_ROOT;?>include/main.css" rel="stylesheet" type="text/css">
</head>
<body width="100%" height="100%">
<br/>
<br/>
<table width="100" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">  
 
 <tr> 
  <td valign="top"> <table width="100%" border="0" cellspacing="0" cellpadding="20">
    <tr> 
     <td class="contentArea"> 
	 <form method="post" name="frmLogin" id="frmLogin">
       <p>&nbsp;</p>
       <table  width="400" align="center" border="0" align="left" cellpadding="5" cellspacing="1" bgcolor="cyan" class="entryTable">
        <tr id="entryTableHeader"> 
         <td>User Login </td>
        </tr>
        <tr> 
         <td class="contentArea"> 
		 <div class="errorMessage" align="center"><?php echo $errorMessage; ?></div>

		  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
           <tr align="center"> 
            <td colspan="3">&nbsp;</td>
           </tr>
           <tr class="text"> 
            <td width="80" align="right">User Name</td>
            <td width="10" align="center">:</td>
            <td><input name="txtUserName" type="text" class="box" id="txtUserName"  size="40" maxlength="40"></td> <!-- if i post the method textUsername will be posted -->
           </tr>
           <tr>
             <td align="right">Password</td>
             <td align="center">:</td>
             <td><input name="txtPassword" type="password" class="box" id="txtPassword" size="40" maxlength="40"></td> <!-- if i post the method textPassword will be posted -->
           </tr>
           <tr> 
            <td width="200" align="right">User Type </td>
            <td width="10" align="center">:</td>
            <td><label>
              <select name="utype" class="box">  <!-- Which I select becomes the value of utype -->
			  <option >&nbsp;&nbsp;Please Select User &nbsp;</option>
			  <option value="admin">&nbsp;&nbsp; Administrator &nbsp;</option>
			  <option value="customer">&nbsp;&nbsp; Employee &nbsp;</option>
			  <option value="employee">&nbsp;&nbsp; Engineer &nbsp;</option>
              </select>
              </label></td>
           </tr>
           <tr>
             <td colspan="2">&nbsp;</td>
             <td>&nbsp;</td>
           </tr>
           
           
           <tr> 
            <td colspan="2">&nbsp;</td>
            <td><input name="btnLogin" type="submit" id="btnLogin" value=" Login Now " style="font-size:12px;color:green;padding:2px 4px;"></td>
           
		   </tr>
          </table></td>
        </tr>
		
       </table>
       <p>&nbsp;</p>
      </form></td>
	  
    </tr>
   </table></td>
 </tr>
  
</table>
<!--<div class='ggg'><img src="images/complain_image.png" width="420" height="220"></div>-->

<p> CSE 470 Group : 13</a></p>
</body>
</html>
