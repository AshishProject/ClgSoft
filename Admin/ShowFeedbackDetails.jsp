<%-- 
    Document   : ShowFeedbackDetails
    Created on : 18 Jul, 2019, 11:57:08 AM
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
    <body>
         <%
                   String un=(String)session.getAttribute("ssn");
                    out.println("Welcome "+un); 
         %>

        <table width="90%" align="center" border="0" height="90%">
          
            <tr>
                <td align="center" colspan="9"><h1>Feedback Details<h1></td>
            </tr>
            
            <tr>
            <b>
                <td align="center"><h3>Feedback ID</h3></td>
                <td align="center"><h3>First Name</h3></td>
                <td align="center"><h3>Last Name</h3></td>
                <td align="center"><h3>Email ID</h3></td>
                <td align="center"><h3>Contact No</h3></td>
                <td align="center"><h3>Feedback</h3></td>
                <td align="center"><h3>Date</h3></td>
                <td align="center"></td>
            </b>  
            </tr>
            
            <%
            try
            {
                Connection c1;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        c1=DriverManager.getConnection("jdbc:mysql://localhost/mailsystemdb","root","");
                
        pst=c1.prepareStatement("select * from feedbacktb");
        rs=pst.executeQuery();
        while(rs.next())
        {
            %>
            
            <tr>
                <td align="center"><%=rs.getString("fid") %></td>
                <td align="center"><%=rs.getString("firstname") %></td>
                <td align="center"><%=rs.getString("lastname") %></td>
                <td align="center"><%=rs.getString("emailid") %></td>
                <td align="center"><%=rs.getString("contact") %></td>
                <td align="center"><%=rs.getString("feedback") %></td>
                <td align="center"><%=rs.getString("date") %></td>
                <td align="center">
                        <a href="../DeleteFeedbackDetails?id=<%=rs.getString("fid")%>">Delete</a> 
                </td>
            </tr>
            
            <%
            
        }
        
            }
            catch(Exception e)
            {
                                                
            }
            
            %>
            
        </table>
    </body>
</html>
