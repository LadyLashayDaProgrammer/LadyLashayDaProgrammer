<%-- 
    Document   : form-processor-one
    Created on : Jul 14, 2020, 6:42:15 PM
    Author     : Gennette Sanders
--%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*"%>
<html>
    <head>
        <title>Display Student Information</title>
        <link rel="stylesheet" href="css/css-1.css">
    </head>
    <body>
        <%
            // get parameters from thr request object
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String collegeName = request.getParameter("collegeName");
            String phoneNumber = request.getParameter("phoneNumber");
        %>
        <div class="center">
            <h1>Thank you for enter your information!</h1>
            <h2>This is the information entered:</h2>
            <table class="inline-block">
                <tr><th id="th-id1" colspan="2">Information Entered</th></tr>
                <tr>
                    <td>First Name:</td>
                    <td><%= firstName %></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><%= lastName %></td>
                </tr>
                <tr>
                    <td>College Name:</td>
                    <td><%= collegeName %></td>
                </tr>
                <tr>
                    <td>Phone Number:</td>
                    <td><%= phoneNumber %></td>
                </tr>
            </table>
            <p> Return to Survey, select the back button.<p>
            <form action="index.html" method="get">
                <input type="submit" value="Back">
            </form>
        </div>
    </body>
</html>
