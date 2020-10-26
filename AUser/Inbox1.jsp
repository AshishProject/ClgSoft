<%-- 
    Document   : Inbox1
    Created on : 26 Jul, 2019, 5:25:33 PM
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
       
        
        <form method="post" action="Reply.jsp" >
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
    <td align="center" colspan="2"> <h1> Reply/Delete Mail </h1> </td>
</tr>

<%
    String a=request.getParameter("id1");
    String b=request.getParameter("id2");
    String c=request.getParameter("id3");
    String d=request.getParameter("id4");
    String e=request.getParameter("id");

%>
 
<tr>
<td align="center">Mail To</td>
<td><input type="text" id="tt1" name="t1"  readonly="readonly" value=<%=d%> /></td>
</tr>


<tr>
<td align="center">Subject</td>
<td><input type="text" name="t2" placeholder="Subject" /></td>
</tr>

<tr>
<td align="center">Message</td>
<td><textarea rows="5" cols="20" placeholder="Text a message" name="t3" /> </textarea> 
</tr>

<tr>
<td align="center">Attach</td>
<td><input type="file" name="t4"   /></td>
</tr>

<tr>
    <td align="center"><a href="Delete.jsp?id=<%=e%>">Delete</a></td>
<td><input type="submit" name="bt1" value="Reply"></td>
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
