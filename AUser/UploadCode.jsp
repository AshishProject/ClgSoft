<%-- 
    Document   : UploadCode
    Created on : Jun 10, 2016, 10:23:59 PM
    Author     : Baldev
--%>

<%@page import="java.sql.*"%>

<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.io.FilenameUtils"%>
<%@ page import="org.apache.commons.fileupload.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
<%!
String t1="";
String t2="";
String t3="";
String a="";


%>
 <%
                   String un=(String)session.getAttribute("ssn");
                    out.println("Welcome "+un); 
             %>

<%
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if(!isMultipart)
 {
 }
 else
 {
ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
List items = null;

  try
  {
    items = servletFileUpload.parseRequest(request);
    //out.println("welcome");
    //out.println("done");
   }
   catch(FileUploadException e)
   { 
       e.printStackTrace();
   }
   Iterator itr = items.iterator();
   
   while (itr.hasNext())
   {
   FileItem item = (FileItem) itr.next();
   if (item.isFormField())
   {
      String name = item.getFieldName();
      String value = item.getString();

            if(name.equals("t1"))
            t1=value;
    
             if(name.equals("t2"))
             t2=value;
            
             if(name.equals("t3"))
             t3=value;
              
   
    }
    else
    {
       try
       {
       String itemName = item.getName();
        
        //out.println("Actual File "+FilenameUtils.getName(itemName));
        //out.println("path="+config.getServletContext().getRealPath("/"));

        String real = FilenameUtils.getName(itemName);
        File savedFile = new File(config.getServletContext().getRealPath("/../../")+"/web/Upload/"+real);

        a=real;
        item.write(savedFile);
       }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }  //else end
    }  //while end
    }

    try
    {
        Connection c1;
        PreparedStatement pst;
        Class.forName("com.mysql.jdbc.Driver");
        c1=DriverManager.getConnection("jdbc:mysql://localhost/mailsystemdb","root","");
        String x=un;
        String y="18-7-2019";
        String z="False";
        
        pst=c1.prepareStatement("insert into mailbtb (mto,mfrom,subject,massage,mdate,attach,delstatus) values(?,?,?,?,?,?,?)");
    
     pst.setString(1,t1);
     pst.setString(2,x);
     pst.setString(3,t2);
     pst.setString(4,t3);
     pst.setString(5, y);
     pst.setString(6, a);
     pst.setString(7, z);
     
     int j=pst.executeUpdate();
     
     if(j>0)
     {
        out.println("<script>alert('Email sent')</script>");
     }
     else
        out.println("<script>alert('There is some problem.....')</script>");

    response.setHeader("refresh", "1;url=ComposeMail.jsp");
 }
    catch(Exception e)
    {
        out.println(e);
    }
%>


</body>
</html>
