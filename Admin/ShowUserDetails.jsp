<%-- 
    Document   : ShowUserDetails
    Created on : 20 Jul, 2019, 8:41:24 PM
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
                <td align="center" colspan="12"><h1>User Details<h1></td>
            </tr>
            <tr>
              <b>
                <td align="center"><h3>SignIn ID</h3></td>
                <td align="center"><h3>User Name</h3></td>
                <td align="center"><h3>Password</h3></td>
                <td align="center"><h3>First Name</h3></td>
                <td align="center"><h3>Last Name</h3></td>
                <td align="center"><h3>Contact No</h3></td>
                <td align="center"><h3>Gender</h3></td>
                <td align="center"><h3>Security Question</h3></td>
                <td align="center"><h3>Security Answer</h3></td>
                <td align="center"><h3>Registration Date</h3></td>
                <td align="center"></td>
              </b>  
            </tr>
            
            <%
            try
            {
                Connection c1;
        PreparedStatement pst;
        ResultSet rs;
        
        String a="admin";
        Class.forName("com.mysql.jdbc.Driver");
        c1=DriverManager.getConnection("jdbc:mysql://localhost/mailsystemdb","root","");
                
        pst=c1.prepareStatement("select * from signup where role!=?");
        pst.setString(1,a);
        rs=pst.executeQuery();
        while(rs.next())
        {
            %>
            
            <tr>
                <td align="center"><%=rs.getString("sid") %></td>
                <td align="center"><%=rs.getString("username") %></td>
                <td align="center"><%=rs.getString("password") %></td>
                <td align="center"><%=rs.getString("firstname") %></td>
                <td align="center"><%=rs.getString("lastname") %></td>
                <td align="center"><%=rs.getString("contact") %></td>
                <td align="center"><%=rs.getString("gender") %></td>
                <td align="center"><%=rs.getString("secques") %></td>
                <td align="center"><%=rs.getString("secans") %></td>
                <td align="center"><%=rs.getString("regdate") %></td>
                <td align="center">
                        <a href="../DeleteUsersDetails?id=<%=rs.getString("sid")%>">Delete</a> 
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
