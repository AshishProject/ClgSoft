<%-- 
    Document   : Forward
    Created on : 24 Jul, 2019, 12:39:40 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.*"%>

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
           <%
                   String un=(String)session.getAttribute("ssn");
                    out.println("Welcome "+un);
             %>

             <%
              try
    {
        Connection c1;
        PreparedStatement pst;
        Class.forName("com.mysql.jdbc.Driver");
        c1=DriverManager.getConnection("jdbc:mysql://localhost/mailsystemdb","root","");
        
        String a=request.getParameter("t1");//mailto
        String b=un;//from
        String c=request.getParameter("t2");//subject
        String d=request.getParameter("t3");//message
        String e=request.getParameter("t4"); //attach
            
        String y="18-7-2019";//date
        String z="False";//delstatus
        
        pst=c1.prepareStatement("insert into mailbtb (mto,mfrom,subject,massage,mdate,attach,delstatus) values(?,?,?,?,?,?,?)");
    
     pst.setString(1,a);
     pst.setString(2,b);
     pst.setString(3,c);
     pst.setString(4,d);
     pst.setString(5, y);
     pst.setString(6, e);   
     pst.setString(7, z);
     
     int j=pst.executeUpdate();
     
     if(j>0)
     {
        out.println("<script>alert('Mail sent')</script>");
     }
     else
        out.println("<script>alert('There is some problem.....')</script>");

    response.setHeader("refresh", "1;url=Outbox.jsp");
 }
    catch(Exception e)
    {
        out.println(e);
    }
             
             %>
         </td> 
     </tr>          
            <tr> 
                <td colspan="2"><%@ include file="Footer.jsp" %> </td>
             </tr>
            
        </table>
      
    </body>
</html>
