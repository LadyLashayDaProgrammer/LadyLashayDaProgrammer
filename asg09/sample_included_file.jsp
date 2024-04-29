<%-- 
    Document   : sample_included_file
    Created on : Jul 12, 2020, 7:07:33 PM
    Author     : Gennette Sanders
--%>

<hr>
<h2>Hello from include file: sample_included_file.jsp</h2>
<%
    System.out.println( "Printed from Java..");
    Date date = new Date();
%>
<h2>Hello! Time from an include file: <%= date %></h2>
<hr>
