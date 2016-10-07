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

        <link rel="stylesheet" href = "HW3.css">
    </head>
    
    <%
        int hours = Integer.parseInt(request.getParameter("hours"));
        int pay = Integer.parseInt(request.getParameter("pay"));
        int preTax = Integer.parseInt(request.getParameter("preTax"));
        int postTax = Integer.parseInt(request.getParameter("postTax"));
        int regularHours = 40;
        double otHours, otPayRate, OtPay, regularPay, grossPay, taxablePay, taxAmount, postTaxPay, netPay;

        if (hours > 40) {
            otHours = hours - regularHours;
            otPayRate = pay * 1.5;
            OtPay = otHours * otPayRate;
            regularPay = regularHours * pay;
            grossPay = regularPay + OtPay;
        }
        
        else {
            grossPay = hours * pay;
            otHours = 0;
            otPayRate = 0;
        }        
        
        taxablePay = grossPay - preTax;
        
        if (grossPay < 500) {
            taxAmount = taxablePay * 0.18;
        }
        
        else {
            taxAmount = taxablePay * 0.22;
        }
        
        postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTax;
    %>
    
    <body>
        <div class = "smaller">
        <h1>Salary Information</h1>
        <hr>
        <br>
        <table class = "design">
            <tbody>
                    <tr>
                        <td><p class = "result1">Hours Worked: </p></td>
                        <td><p class = "result2"><%= hours %></p></td>
                    </tr>
                    
                    <tr>
                        <td><p class = "result1">Hourly Rate:</p></td>
                        <td><p class = "result2"><%= pay %></p></td>
                    </tr>
                    
                    <tr>
                        <td><p class = "result1"># Hours Overtime: </p></td>
                        <td><p class = "result2"><%= otHours %></p></td>
                    </tr>
                    <tr>
                        <td><p class = "result1">Overtime Hourly Rate: </p></td>
                        <td><p class = "result2"><%= otPayRate %></p></td>
                    </tr>
                    <tr>
                        <td><p class = "result1">Gross Pay: </p></td>
                        <td><p class = "result2"><%= grossPay %></p></td>
                    </tr>
                    
                    
                    <tr>
                        <td><p class = "result1">Pre-tax Deduct:</p></td>
                        <td><p class = "result2"><%= preTax %></p></td>
                    </tr>
                    
                    <tr>
                        <td><p class = "result1">Pre-tax Pay:</p></td>
                        <td><p class = "result2"><%= taxablePay %></p></td>
                    </tr>
                    <tr>
                        <td><p class = "result1">Tax Amount:</p></td>
                        <td><p class = "result2"><%= taxAmount %></p></td>
                    </tr>
                    <tr>
                        <td><p class = "result1">Post-tax Pay:</p></td>
                        <td><p class = "result2"><%= postTaxPay %></td>
                    </tr>
                    
                    <tr>
                        <td><p class = "result1">Post-tax Deduct:</p></td>
                        <td><p class = "result2"><%= postTax %></p></td>
                    </tr>         
                    
                    <tr>
                        <td><p class = "result1">Net Pay:</p></td>
                        <td><p class = "result2"><%= netPay %></p></td>
                    </tr>
            </tbody>
            
            
        </table>
        </div>
        
    </body>
</html>
