<%-- 
    Document   : index
    Created on : Jul 24, 2020, 6:43:52 PM
    Author     : Gennette Sanders
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Enter Cookie Data</title>
        <link rel="stylesheet" href="css/css-3.css">
    </head>
    <body>
        <div class="center">
            <h1>Enter Cookie Data</h1>
            <form action="cookieCreator.jsp" method="GET">
                <table class="inline-block">
                    <tr><th id="th-id1" colspan="2">National Information</th></tr>
                    <tr>
                        <td>Country:</td>  
                        <td><input type="text" name="country"></td>
                    </tr>
                    <tr>
                        <td>Animal:</td>  
                        <td><input type="text" name="animal"></td>
                    </tr>
                    <tr>
                        <td>Flower:</td>  
                        <td><input type="text" name="flower"></td>
                    </tr>
                    <tr>
                        <td></td>  
                        <td><br><input type="submit" class="coral_color"
                                       value="Create Cookies"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
