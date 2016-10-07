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
        <div class = "smaller">
        
        <h1>Simple Salary Calaulator</h1>
        <hr>
        <br>
        <form name ="salaryCalculationForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td><p>Hours Worked:  </p></td>
                        <td><input type="text" name="hours" size="25" required></td>
                    </tr>
                    
                    <tr>
                        <td><p>Hourly Pay:  </p></td>
                        <td><input type="text" name="pay" size="25" required></td>
                    </tr>
                    
                    <tr>
                        <td><p>Pre-tax Deduct:  </p></td>
                        <td><input type="text" name="preTax" size="25" required></td>
                    </tr>
                    
                    <tr>
                        <td><p>Post-tax Deduct:  </p></td>
                        <td><input type="text" name="postTax" size="25" required></td>
                    </tr>
                    
                </tbody>
                
            </table>
            
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </div>    
        </form>
        
        
    </body>
</html>
