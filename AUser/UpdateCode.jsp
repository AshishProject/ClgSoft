<%-- 
    Document   : UpdateCode
    Created on : 24 Jul, 2019, 5:34:30 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
String un=(String)session.getAttribute("ssn");
                    
String a=request.getParameter("p1");
String b=request.getParameter("p2");

if(a.equals(b))
{
      try
                {
                    
                       Connection c1;
                       PreparedStatement pst;
                       ResultSet rs;
    
                Class.forName("com.mysql.jdbc.Driver");
                 c1=DriverManager.getConnection("jdbc:mysql://localhost/mailsystemdb","root","");
              
               pst=c1.prepareStatement("update signup set password=? where username=?");
               pst.setString(1, a);
               pst.setString(2, un);
             
             int j=pst.executeUpdate();
             if(j>0)
             {
               out.println("<script>alert('Password Changed Succesfully ')</script>");
               response.setHeader("refresh", "1;url=index.jsp"); 
             }
             else
             {
                  out.println("<script>alert('Password didn't Changed  ')</script>");
             }
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
            
}


%>
    


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
    </body>
</html>
