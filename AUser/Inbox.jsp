<%-- 
    Document   : Inbox
    Created on : 26 Jul, 2019, 4:46:15 PM
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
             
            <table width="90%" align="center" border="0" height="90%">
           
            <tr>
                <td align="center" colspan="12"><h1> Inbox <h1></td>
            </tr>
            <tr>
              <b>
                <td align="center"><h3>Mail from</h3></td>
                <td align="center"><h3>Subject</h3></td>
                <td align="center"><h3>Mail Date</h3></td>
              </b>  
            </tr>
            
            <%
            try
            {
                Connection c1;
        PreparedStatement pst;
        ResultSet rs;
        
        String a="false";
        Class.forName("com.mysql.jdbc.Driver");
        c1=DriverManager.getConnection("jdbc:mysql://localhost/mailsystemdb","root","");
                
        pst=c1.prepareStatement("select * from mailbtb where delstatus=? and mto=?");
        pst.setString(1,a);
        pst.setString(2,un);
        
        rs=pst.executeQuery();
        while(rs.next())
        {
               
            %>
            
            <tr>
                <td align="center"><%=rs.getString("mfrom") %></td>
                <td align="center"><a href="Inbox1.jsp?id=<%=rs.getString("mid")%>&id1=<%=rs.getString("subject")%>&id2=<%=rs.getString("massage")%>&id3=<%=rs.getString("attach")%>&id4=<%=rs.getString("mfrom")%>" ><%=rs.getString("subject") %></a></td>
                <td align="center"><%=rs.getString("mdate") %></td>
                
            
            </tr>
            
            <%
            
        }
        
            }
            catch(Exception e)
            {
                                                
            }
            
            %>
            
        </table>
   
          
         </td>  
     </tr>          
            <tr> 
                <td colspan="2"><%@ include file="Footer.jsp" %> </td>
             </tr>
            
        </table>
      
    </body>
</html>
