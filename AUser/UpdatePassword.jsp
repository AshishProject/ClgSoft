<%-- 
    Document   : UpdatePassword
    Created on : 24 Jul, 2019, 5:26:22 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="../Images/im4.jpg" >
        <form method="post" action="UpdateCode.jsp">
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
            
             <%
                   String un=(String)session.getAttribute("ssn");
                    out.println("Welcome "+un); 
             %>

             <table width="40%" align="center" border="1">
                 
                 <tr>
                     <td colspan="2" align="center"><h1>Change Password</h1></td>
                 </tr>
                 
                 <tr>
                     <td>New Password</td>
                     <td><input type="password" name="p1" placeholder="New Password" ></td>
                 </tr>
                 
                 <tr>
                     <td>Confirm Password</td>
                     <td><input type="password" name="p2" placeholder="Re Enter Password"></td>
                 </tr>
                 
                 <tr>
                     <td></td>
                     <td><input type="submit" name="s1" value="Save"></td>
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
