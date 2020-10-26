<%-- 
    Document   : Feedback Form
    Created on : 16 Jul, 2019, 8:20:07 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <style>
            #i6
            {
                border:none;
                font-weight: bold;
                font-size: 18px;
                padding: 15px 20px;
                color: white;
                background-color: #006666;
                border-radius : 8px;
            }
            
        </style>
        
        
        <script>
            
            function validate()
{
    
un=document.getElementById("i1").value;	
if(un=="")
{
	alert("Please enter username ");
	return false;
}
for(i=0;i<=9;i++)
{
	if(un.charAt(i)=="0"||un.charAt(i)=="1"||un.charAt(i)=="2"||un.charAt(i)=="3"||un.charAt(i)=="4"||un.charAt(i)=="5"||un.charAt(i)=="6"||un.charAt(i)=="7"||un.charAt(i)=="8"||un.charAt(i)=="9"||un.charAt(i)=="0")
	{
		alert("Please enter characters in username ");
	return false;

	}
}
ln=document.getElementById("i2").value;	
if(ln=="")
{
	alert("Please enter lastname ");
	return false;
}
for(i=0;i<=9;i++)
{
	if(ln.charAt(i)=="0"||ln.charAt(i)=="1"||ln.charAt(i)=="2"||ln.charAt(i)=="3"||ln.charAt(i)=="4"||ln.charAt(i)=="5"||ln.charAt(i)=="6"||ln.charAt(i)=="7"||ln.charAt(i)=="8"||ln.charAt(i)=="9"||ln.charAt(i)=="0")
	{
		alert("Please enter characters in username ");
	return false;

	}
}

eid=document.getElementById("i3").value;	
if(eid=="")
{
	alert("Please enter email id ");
	return false;
}

cn=document.getElementById("i4").value;	
if(cn=="")
{
	alert("Please enter contact no ");
	return false;
}

if(cn.length!=10)
{
	alert("Mobile no must be 10 digit long");
	return false;
}


add=document.getElementById("i5").value;	
if(add=="")
{
	alert("Please enter address ");
	return false;
}

}

</script>

         
        
    </head>
    <body background="Images/im6.jpg">
       
        <form method="post" action="SaveFeedbackCode" onsubmit="return validate();" >
             
<table width="30%" align="center" border="0" background="im1.jpg">
<tr>
    <td align="center" colspan="2"><h1>Feedback Form</h1></td>
</tr>

<tr>
<td align="left">First Name</td>
<td><input type="text" name="t1" id="i1" placeholder="First Name"/></td>
</tr>

<tr>
<td align="leftr">Last Name</td>
<td><input type="text" name="t2" id="i2" placeholder="Last Name" /></td>
</tr>


<tr>
<td align="left">Email ID</td>
<td><input type="email" name="t3" id="i3" placeholder="Email ID" /></td>
</tr>


<tr>
<td align="left">Contact</td>
<td><input type="text" name="t4" id="i4" placeholder="Contact No" />
</tr>

<tr>
<td align="left">Feedback</td>
<td><textarea rows="4" cols="20" name="t5" id="i5" placeholder="Text a Feedback" ></textarea></td>
</tr>

<tr>
<td align="center"></td>
<td>
<input type="submit" name="bt1" value="Save" id="i6" />

</td>
</tr>

</table>

</form>
        
    </body>
</html>
