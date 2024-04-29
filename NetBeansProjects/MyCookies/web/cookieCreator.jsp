<%-- 
    Document   : cookieCreator
    Created on : Jul 24, 2020, 7:13:26 PM
    Author     : Gennette Sanders
--%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cookie that were Created</title>
        <link rel="stylesheet" href="css/css-3.css">
        <style type="text/css">
            ol {margin-left: 80px;}
            li {font-size: 2em; text-align: left;}
            p {font-size: 1em; line-height: 1;}
        </style>
    </head>
    <%@ include file="cookieCreatorProcessor.jsp" %>
    <body>
        <div class="center">
            <h1>Three Cookies Created</h1>
            <ol>
                <li><p><b>Country:</b>
                    <%= request.getParameter("country") %>
                </p></li> 
                <li><p><b>Animal:</b>
                    <%= request.getParameter("animal") %>
                </p></li>
                <li><p><b>Flower:</b>
                    <%= request.getParameter("flower") %>
                </p></li> 
            </ol>
                <button onclick="location.href='index.jsp'"
                        class="coral_color">Back to Enter Cookie Data</button>
                <br/><br/><a href="readingCookies.jsp">Read Cookies</a>
        </div>    
    </body>
</html>
