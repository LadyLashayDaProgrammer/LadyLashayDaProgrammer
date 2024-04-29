<%-- 
    Document   : form-processor-two
    Created on : Jul 14, 2020, 8:57:35 PM
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
            String favoriteSport = request.getParameter("favoriteSport");
            String favoriteTeam = request.getParameter("favoriteTeam");
            String favoritePlayer = request.getParameter("favoritePlayer");
            String reasonFavorite = request.getParameter("reasonFavorite");
        %>
        <div class="center">
            <h1>Thank you for enter your information!</h1>
            <h2>This is the information entered:</h2>
            <table class="inline-block">
                <tr><th id="th-id1" colspan="2">Information Entered</th></tr>
                <tr>
                    <td>Favorite Sport:</td>
                    <td><%= favoriteSport %></td>
                </tr>
                <tr>
                    <td>Favorite Team:</td>
                    <td><%= favoriteTeam %></td>
                </tr>
                <tr>
                    <td>Favorite Player:</td>
                    <td><%= favoritePlayer %></td>
                </tr>
                <tr>
                    <td>Reason why favorite:</td>
                    <td><%= reasonFavorite %></td>
                </tr>
            </table>
            <p> Return to Survey, select the back button.<p>
            <form action="index.html" method="get">
                <input type="submit" value="Back">
            </form>
        </div>
    </body>
</html>
