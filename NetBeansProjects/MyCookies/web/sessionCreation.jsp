<%-- 
    Document   : sessionCreation
    Created on : Jul 26, 2020, 4:51:57 PM
    Author     : genla
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>JSP Session Creation</title>
        <link rel="stylesheet" href="css/css-3.css">
    </head>
    <%@ page import="java.util.*" %>
    <body>
        <div class="center">
            <h1>Session Creation</h1>
            <form action="sessionCreation.jsp">
                <table class="inline-block">
                    <tr><th id="th-id1" colspan="2">National Information</th></tr>
                    <tr>
                        <td>Artist:</td>  
                        <td><input type="text" name="artist"></td>
                    </tr>
                    <tr>
                        <td>Color:</td>  
                        <td><input type="text" name="color"></td>
                    </tr>
                    <tr>
                        <td></td>  
                        <td><input type="submit" value="Session creation"></td>
                    </tr>
                </table>
            </form> 
            <%
                // Get session creation time
                Date createTime = new Date(session.getCreationTime());
                
                // Get last access time
                Date lastAccessTime = new Date(session.getLastAccessedTime());
                String title = "Welcome Back";
                Integer visitCount = new Integer(0);
                String visitCountKey = new String("visitCount");
                String artistValue = request.getParameter("artist");
                String artistKey = new String("artistValue");
                String colorValue = request.getParameter("color");
                String colorKey = new String("colorValue");

                     
                // if attribute == null, a new session
                if (session.getAttribute(artistKey) == null) {
                    title = "Welcome";
                    session.setAttribute(artistKey, artistValue);
                    session.setAttribute(visitCountKey, visitCount);
                    session.setAttribute(colorKey, colorValue);
                }

                // Now increment vistCountValue and get the Session attributes
                visitCount = (Integer)session.getAttribute(visitCountKey);
                visitCount = visitCount + 1;
                session.setAttribute(visitCountKey, visitCount);
                session.getAttribute(artistKey);
                session.getAttribute(colorKey);
            %>
            <div class="center">
                <h1>Session Tracking</h1>
                <h3><% out.print(title); %></h3>
                <table class="inline-block">
                    <tr id="th-id1">
                        <th>Session info</th>
                        <th>Value</th>
                    </tr>
                    <tr>
                        <td>id</td>
                        <td><% out.print(session.getId()); %></td>
                    </tr>
                    <tr>
                        <td>Creation Time</td>
                        <td><% out.print(createTime); %></td>
                    </tr>
                    <tr>
                        <td>Time of Last Access</td>
                        <td><% out.print(lastAccessTime); %></td>
                    </tr>
                    <tr>
                        <td>Artist</td>
                        <td><% out.print(artistValue); %></td>
                    </tr>
                    <tr>
                        <td>Number of visits</td>
                        <td><% out.print(visitCount); %></td>
                    </tr>
                    <tr>
                        <td>Color</td>
                        <td><% out.print(colorValue); %></td>
                    </tr>
                </table>
            </div>
            <button onclick="location.href='readingCookies.jsp'"
                            class="coral_color" style="margin-top: 20px">
                        Back to reading cookies
                    </button>
        </div>
    </body>
</html>

