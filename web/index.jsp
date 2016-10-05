<%-- 
    Document   : index
    Created on : 2016. 10. 3, 6:29:23 AM
    Author     : Chang Yeon Kim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" href = "HW3.css">
    </head>
    <body>
        <h1>Salary Calaulator</h1>
        
        <form name ="salaryCalculationForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hours" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="pay" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="preTax" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="postTax" size="50"</td>
                    </tr>
                    
                </tbody>
                
            </table>
            
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
            
        </form>
        
        
    </body>
</html>
