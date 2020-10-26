<%-- 
    Document   : Delete
    Created on : 26 Jul, 2019, 8:00:22 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
                    
String a="true";
String b=request.getParameter("id");
   

      try
                {
                    
                       Connection c1;
                       PreparedStatement pst;
                       ResultSet rs;
    
                Class.forName("com.mysql.jdbc.Driver");
                 c1=DriverManager.getConnection("jdbc:mysql://localhost/mailsystemdb","root","");
              
               pst=c1.prepareStatement("update mailbtb set delstatus=? where mid=?");
               pst.setString(1, a);
               pst.setString(2, b);
             
             int j=pst.executeUpdate();
             if(j>0)
             {
               out.println("<script>alert('Mail Deleted Succesfully ')</script>");
               response.setHeader("refresh", "1;url=index.jsp"); 
             }
             else
             {
                  out.println("<script>alert(' Error in deleting mail ')</script>");
             }
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
            
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
