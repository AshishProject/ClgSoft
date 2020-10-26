<%-- 
    Document   : Feedback
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
        h2{
            font-weight: italic;
            font-size: 25px;
        }    
            
        </style>
    </head>
    <body>
        
        <p>
            <%
                   String un=(String)session.getAttribute("ssn");
                    out.println("Welcome "+un); 
             %>

        </p>
        <h2>
                     <p> Welcome to Admin Panel </p>
        </h2>
    </body>
</html>
