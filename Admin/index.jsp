<%-- 
    Document   : index
    Created on : 16 Jul, 2019, 7:39:41 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
       <body background="../Images/im4.jpg" >
       
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
             <%@ include file="Right.jsp" %>
             <p align="right">
                
             </p>
              </td> 
           </tr>          
           <tr> 
                <td colspan="2">
                <%@ include file="Footer.jsp" %> </td>
            </tr>
            
        </table>
      
    </body>
</html>
