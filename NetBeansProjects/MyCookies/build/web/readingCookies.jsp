<%-- 
    Document   : readingCookies
    Created on : Jul 24, 2020, 7:55:34 PM
    Author     : Gennette Sanders
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Reading Cookies</title>
        <link rel="stylesheet" href="css/css-3.css">
    </head>
    <body>
        <div>
            <h1>Reading Cookies</h1>
            <%
                Cookie cookies[] = null;
                // Get an array of Cookies associated with this domain
                cookies = request.getCookies();
                if (cookies != null) {
                    out.println("<h2 class=\"blue_color\">"
                            + "Found Cookies: Name --- Value</h2>");
                    for (int i = 0; i < cookies.length; i++) {
                        out.print("<h3>Name: " + cookies[i].getName() + " --- ");
                        out.print("Value: " + cookies[i].getValue()+"</h3>");
                    }
                } else { 
                    out.println("<h2>No cookies found</h2>");
                }
            %>
            <button onclick="location.href='index.jsp'" class="coral_color">
                Back to Enter Cookie Data</button>
            <br/><br/><a href="sessionCreation.jsp">Session Creation</a>
        </div>
    </body>
</html>
