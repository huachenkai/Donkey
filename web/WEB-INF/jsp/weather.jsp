<%-- 
    Document   : weather
    Created on : 2018-6-14, 9:56:21
    Author     : apple
--%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String city_name = request.getParameter("seacity");
            String uri = "http://api.openweathermap.org/data/2.5/weather?q=";
            String api = "6387c741a4b90ef65943c2b551e10cd4";
            URL request_uri = new URL(uri + city_name + "&mode=html&units=metric&APPID=" + api);
            //Parse the URL -> Start a Connection to this URL
            HttpURLConnection connection = (HttpURLConnection) request_uri.openConnection();
            //cast the URLConnection to HttpURLConnection because the web service
            //will send data over HTTP
            //REST API -> HTTP to send data
            //Read the data(Need a Reader)
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            //Read the data and save in an object
            StringBuilder data = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null)//read all the data that is available
            {
                data.append(line);//add this data to the StringBuilder object
            }
        %>
        <%=data%>
    </body>
</html>
