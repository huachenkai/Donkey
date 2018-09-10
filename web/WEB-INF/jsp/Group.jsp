

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            html, body, h1, h2, h3, p, ol, ul, li, a{
                padding: 0;
                border: 0;
                margin: 0;
            }
            #CH{
                position: absolute;
                top: 20px;
                right: 10px;
            }
            * {
                box-sizing:border-box;
            }
            form {
                top: -70px;
                position:relative;
                width:300px;
                margin:0 auto;
            }
            input,button {
                border:none;
                outline:none;
            }
            input {
                width:100%;
                height:42px;
                padding-left:13px;
            }
            button {
                height:42px;
                width:42px;
                cursor:pointer;
                position:absolute;
            }
            .bar6 input {
                border:2px solid #000000;
                border-radius:5px;
                background:transparent;
                top:0;
                right:0;
            }
            .bar6 button {
                background:#000000;
                border-radius:0 5px 5px 0;
                width:60px;
                top:0;
                right:0;
            }
            .bar6 button:before {
                content:"Search";
                font-size:13px;
                color:#FF0066;
            }
            .foot{
                height: 60px;
                line-height: 60px;
                background-color: pink;
            }
        </style>
    </head>
    <body>
        <div class="head">
            <img src="/Donkey1/Galleria/images/logo.png" alt="logo" />
            <form action="weather.jsp" >

            </form>
            <!--            <form class="bar6">
                            <input type="text" name="Search">
                            <button type="submit"></button>
                        </form>-->
            <h3 id="CH">Consumer Hotline : 400-1688-688</h3>
        </div><br/><br/>

        <div align="center" id="topnav" style="float:left; width: 100%; height: 40px; word-spacing: 10px; font-size: 25px; 
             padding-bottom: 0px; margin-left: 0%; font-family: 'Comic Sans MS',cursive;
             margin-top: -2%;">
            <nav>
                <a href="index.htm?id=${user.id}">Home Page</a> |
                <a href="hotel.htm?id=${user.id}">Hotel</a> |
                <a href="Restaurant.htm?id=${user.id}">Restaurant</a> |
                <a href="scenic spots.htm?id=${user.id}">scenic spots</a> |
                <a href="Group?id=${user.id}">Group travelling</a> |
                <a href="feedback.htm?id=${user.id}">Feed Back</a>
            </nav>
        </div>
        <br/><br/>

        <h2 align="center">Groups</h2>
        <table align="center" width="70%" border="1">
            <tr>
                <th>Group ID</th>
                <th>Starting Point</th>
                <th>Scenic</th>
                <th>Time</th>
                <th>Charge</th>
                <th>Number</th>
                <th>Way</th>
                <th>Operation</th>
            </tr>
            <c:if test="${not empty listb}">
                <c:forEach items="${listb}" var="groups">
                    <form action="booking" method="POST">
                        <tr align="center">
                            <td><input type="text" name="gid" value="${groups.gid}" style="border-style: none" readonly="true"/></td>
                            <td>${groups.gstart}</td>
                            <td>${groups.gscenic}</td>
                            <td>${groups.gtime}</td>
                            <td>${groups.gcharge}</td>
                            <td>${groups.gnumber}</td>
                            <td>${groups.gway}</td>
                            <td><input type="submit" value="Book"/></td>
                        </tr>
                    </form>
                </c:forEach>
            </c:if>
        </table>
        <br/><br/>

        <div class="foot">
            <h1 align="center">&copy;2012-2018 NIIT China LTD. All Rights Reserved.</h1>
        </div>
    </body>
</html>
