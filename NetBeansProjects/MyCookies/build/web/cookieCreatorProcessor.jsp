<%-- 
    Document   : cookieCreatorProcessor
    Created on : Jul 24, 2020, 7:22:47 PM
    Author     : Gennette Sanders
--%>

<% 
    // Create three cookies from Request object
    Cookie country = new Cookie("country",
            request.getParameter("country"));
    Cookie animal = new Cookie("animal",
            request.getParameter("animal"));
    Cookie flower = new Cookie("flower",
            request.getParameter("flower"));
    // Set expiration dates to 24 hours
    country.setMaxAge(60*60*2);
    animal.setMaxAge(60*60*2);
    flower.setMaxAge(60*60*2);
    // Add cookies to Response object - back to browser
    response.addCookie(country);
    response.addCookie(animal);
    response.addCookie(flower);
%>