<%-- 
    Document   : Outbox1
    Created on : 24 Jul, 2019, 12:10:52 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <script>
function display()
{
document.getElementById("tt1").value=document.getElementById("s1").value;
}
</script>

    
    </head>
    <body background="../Images/im4.jpg" >
       
        
        <form method="post" action="Forward.jsp" >
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
    <td align="center" colspan="3"> <h1>Show Mail</h1> </td>
</tr>

<%
    String a=request.getParameter("id1");
    String b=request.getParameter("id2");
    String c=request.getParameter("id3");


%>
 
<tr>
<td align="center">Mail To</td>
<td><input type="text" id="tt1" name="t1" placeholder="Email ID" /></td>


<td align="center"  rowspan="5">
<select id="s1" multiple="multiple" onchange="display()">

     <%
            try
            {
                Connection c1;
        PreparedStatement pst;
        ResultSet rs;
        
       String aa="user";
        Class.forName("com.mysql.jdbc.Driver");
        c1=DriverManager.getConnection("jdbc:mysql://localhost/mailsystemdb","root","");
                
        pst=c1.prepareStatement("select * from signup where role=?");
        pst.setString(1,aa);
        rs=pst.executeQuery();
        while(rs.next())
        {
            %>
            
               <option value=<%=rs.getString("username") %>  > <%=rs.getString("firstname") %>   </option>

           
            <%
        
        }
        
            }
            catch(Exception e)
            {
                          ;                   
            }
            
            %>
           
    
  </select>  
</td>
</tr>


<tr>
<td align="center">Subject</td>
<td><input type="text" name="t2" placeholder="Subject"  value=<%=a%>  /></td>
</tr>

<tr>
<td align="center">Message</td>
<td><textarea rows="5" cols="20" placeholder="Text a Message" name="t3" /> <%=b%> </textarea> 
</tr>

<tr>
<td align="center">Attach</td>
<td><input type="text" name="t4"  value=<%=c%> /></td>
</tr>

<tr>
<td align="center"></td>
<td><input type="submit" name="bt1" value="Forward"></td>
</tr>


</table>
         </td> 
          </tr>          
            <tr> 
                <td colspan="2"><%@ include file="Footer.jsp" %> </td>
             </tr>
            
        </table>

             
             
             
          </td> 
      </tr>          
            <tr> 
                <td colspan="2"><%@ include file="Footer.jsp" %> </td>
             </tr>
            
        </table>
      </form>
    </body>
</html>
