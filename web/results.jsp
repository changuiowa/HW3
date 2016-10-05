<%-- 
    Document   : results
    Created on : 2016. 10. 5, 11:34:06 AM
    Author     : Chang Yeon Kim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
    </head>
    
    <%
        String hours = request.getParameter("hours");
        String pay = request.getParameter("pay");
        String preTax = request.getParameter("preTax");
        String postTax = request.getParameter("postTax");

    %>
    
    <body>
        <h1>Salary Information</h1>
        <table border ="1">
            <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><%= hours %></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><%= pay %></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><%= preTax %></td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><%= postTax %></td>
                    </tr>                
            </tbody>
            
            
        </table>
        
        
    </body>
</html>
