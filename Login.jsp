<%--
    Document   : Login
    Created on : 20 Jul, 2019, 7:10:08 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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
        
    </head>
    <body background="Images/im4.jpg" >
        <form method="post" action="LoginCheck">

       <table width="100%" align="center" border="1">
            <tr> 
            
                <td colspan="2" height="200"> 
                    <%@ include file="Header.jsp" %> 
                </td> 
            </tr>
     <tr>
         <td align="center" width="20%" height="555" >
          <%@ include file="Left.jsp" %>
          </td>
         <td  width="80%" height="555" >
         
         <table width="30%" align="center" border="0">
         <tr>
             <td align="center" colspan="2"><h1>Login Form</h1></td>
             
         </tr>
         
         
         <tr>
             <td align="center">Username</td>
             <td><input type="text" name="t1" placeholder="Username"></td>
         </tr>
         
         <tr>
             <td align="center">Password</td>
             <td><input type="password" name="t2" placeholder="Password"></td>
         </tr>
         
         
         <tr>
             <td align="center"></td>
             <td><input type="submit" name="bt1" value="Login" id="i6"></td>
         </tr>
         
     </table>
         
         </td> 
</tr>          
            <tr> 
                <td colspan="2"><%@ include file="Footer.jsp" %> </td>
             </tr>
            
        </table>
      
    </body>
</html>
