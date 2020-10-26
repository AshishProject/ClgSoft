<%-- 
    Document   : SignIn
    Created on : 20 Jul, 2019, 7:28:56 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            #i6
            {
                border:none;
                font-weight: bold;
                font-size: 18px;
                padding: 15px 20px;
                color: white;
                background-color: #006666;
                border-radius : 8px;
            }
            
        </style>
        
    </head>
    
       <body background="../Images/im4.jpg" >
           
           
           <form method="post" action="../SignUpSave" >
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

                 <table width="40%" align="center" border="0" >
                     
                     <tr>
                         <td colspan="2" align="center"><h1> Login Form </h2></td>
                     </tr>
                    
                      <tr>
                         <td> Username </td>
                         <td> <input type="text" name="t1" placeholder="Username" > </td>
                     </tr>
                    
                      <tr>
                         <td> Password </td>
                         <td> <input type="password" name="t2"placeholder="Password" > </td>
                     </tr>
                    
                      <tr>
                         <td> First Name </td>
                         <td> <input type="text" name="t3"placeholder="First Name" > </td>
                     </tr>
                    
                      <tr>
                         <td> Last Name </td>
                         <td> <input type="text" name="t4" placeholder="Last Name" > </td>
                     </tr>
                    
                      <tr>
                         <td> Contact </td>
                         <td> <input type="text" name="t5"placeholder="Contact No" > </td>
                     </tr>
                    
                        <tr>
                           <td >Gender</td> 
                           <td>
                           <input type="radio" name="r1"  value="Male" />Male
                           <input type="radio" name="r1"  value="Female" />Female</td>
                         </tr>

                     <tr>
                          <td >Security Question</td>
                           <td>
                             <select name="s1">
                              <option value="Select">Select</option>
                              <option value="What is the name of your best friend">What is the name of your best friend ? </option>
                              <option value="What is the name of your favourite uncle ?">What is the name of your favourite uncle ?</option>
                              <option value="What is the name of your pet ?">What is the name of your pet ?</option>
                              <option value="What is the name of your favourite colour ?">What is the name of your favourite colour ?</option>
                              <option value="What is the name of your favourite movie ?">What is the name of your favourite movie ?</option>
                              <option value="What is the name of your favourite song ?">What is the name of your favourite song ?</option>
                            
                             
                             </select>
                          </td>
                      </tr>

                     <tr>
                         <td> Security Answer </td>
                         <td> <input type="text" name="t6" placeholder="Type Answer" > </td>
                     </tr>
                     
                     
                         <tr>
                               <td align="center"></td>
                               <td>
                                <input type="submit" name="bt1" value="Submit" id="i6" />
                               </td>
                         </tr>

                     
                     
                 </table>
             
             </td> 
           </tr>          
           <tr> 
                <td colspan="2">
                <%@ include file="Footer.jsp" %> </td>
            </tr>
            
        </table>
       </form>
      
    </body>
</html>
