<%-- 
    Document   : form-processor-classes
    Created on : Jul 18, 2020, 8:25:58 PM
    Author     : Gennette Sanders
--%>
<!DOCTYPE html>
<%@ page import="CustomBuild.*, data.*, java.io.*, java.util.*" %>
<html>
    <head>
        <title>Display New Aircraft and Automobile with Classes</title>
        <link rel="stylesheet" href="css/css-1.css">
    </head>
    <body>
        <%
            // get parameters from the Request object aircraft
            String altitude = request.getParameter("altitude");
            String airspeed = request.getParameter("airspeed");
            String identification = request.getParameter("identification");
            String destination = request.getParameter("destination");
            // set filePath to a relative file name
            ServletContext sc = this.getServletContext();
            String filePath = sc.getRealPath("/WEB-INF/aircraftInfo.txt");
            // use custom Java objects to write to file
            Aircraft aircraft = new Aircraft(altitude, airspeed,
                    identification, destination);
            AircraftFile.add(aircraft, filePath);
            
            // get parameters from the Request object automobile
            String model = request.getParameter("model");
            String year = request.getParameter("year");
            String doors = request.getParameter("doors");
            String color = request.getParameter("color");
            // set filePath to a relative file name
            ServletContext scAutomobile = this.getServletContext();
            String filePathAutomobile = scAutomobile.getRealPath("/WEB-INF/automobileInfo.txt");
            // use custom Java objects to write to file
            Automobile automobile = new Automobile(model, year, doors, color);
            AutomobileFile.add(automobile, filePathAutomobile);
        %>   
        <div class="center">
            <h2>This is the information entered</h2>
            <table class="inline-block">
                <tr><th id="th-id1" colspan="2">Information for Aircraft</th></tr>
                <tr>
                    <td>Altitude:</td>
                    <td><%= aircraft.getAltitude() %></td>
                </tr>
                <tr>
                    <td>Airspeed:</td>
                    <td><%= aircraft.getAirspeed() %></td>
                </tr>
                <tr>
                    <td>Identification:</td>
                    <td><%= aircraft.getIdentification() %></td>
                </tr>
                <tr>
                    <td>Destination:</td>
                    <td><%= aircraft.getDestination() %></td>
                </tr>
                <tr><th id="th-id1" colspan="2">Information for Automobile</th></tr>
                <tr>
                    <td>Model:</td>
                    <td><%= automobile.getModel() %></td>
                </tr>
                <tr>
                    <td>Year:</td>
                    <td><%= automobile.getYear() %></td>
                </tr>
                <tr>
                    <td>Doors:</td>
                    <td><%= automobile.getDoors() %></td>
                </tr>
                <tr>
                    <td>Color:</td>
                    <td><%= automobile.getColor() %></td>
                </tr>
            </table>
            <p> 
                To build another aircraft and automobile, select the button 
                below.
            </p>
            <form action="index.html" method="get">
                <input type="submit" class="table_header"
                       value="Back to Build">
            </form>
        </div>
    </body>
</html>
