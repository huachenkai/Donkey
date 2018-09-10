<%-- 
    Document   : admin
    Created on : 2018-6-6, 16:22:02
    Author     : apple
--%>

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
             .head{
                height: 90px;
            }
            #back{
                position: absolute;
                right: 20px;
                top: 10px;
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
            <a href="Welcome" id="back">Back</a><br/>
        </div>
        <div>
            <h2 align="center">User List</h2>
            <table align="center" width="70%" border="1">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Password</th>
                    <th>Birthday</th>
                    <th>E-mail</th>
                    <th>Mobile</th>
                    <th>Operation</th>
                </tr>
                <c:if test="${not empty list}">
                    <c:forEach items="${list}" var="user">
                        <tr align="center">
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.pass}</td>
                            <td>${user.birth}</td>
                            <td>${user.email}</td>
                            <td>${user.mobile}</td>
                            <td><a href="deleteUser?id=${user.id}">Delete</a></td>
                        </c:forEach>
                    </c:if>
            </table>
            <br/><br/>


            <h2 align="center">Feedback List</h2>
            <table align="center" width="70%" border="1">
                <tr>
                    <th>User Feedback Form</th>
                    <th>Operation</th>
                </tr>
                <c:if test="${not empty lista}">
                    <c:forEach items="${lista}" var="feedback">
                        <tr align="center">
                            <td>${feedback.usuggest}</td>
                            <td><a href="deleteFeedback?id=${feedback.usuggest}">Delete</a></td>
                        </tr>
                    </c:forEach>
                </c:if>
            </table>
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
                    <th>Operation</th>
                </tr>
                <c:if test="${not empty listb}">
                    <c:forEach items="${listb}" var="groups">
                        <tr align="center">
                            <td>${groups.gid}</td>
                            <td>${groups.gstart}</td>
                            <td>${groups.gscenic}</td>
                            <td>${groups.gtime}</td>
                            <td>${groups.gcharge}</td>
                            <td>${groups.gnumber}</td>
                            <td>${groups.gway}</td>
                            <td><a href="deleteGroups?id=${groups.gid}">Delete</a></td>
                            <td><a href="updateGroups?id=${groups.gid}">Update</a></td>
                        </tr>
                    </c:forEach>
                </c:if>
            </table>
            <br/><br/>

            <h2 align="center">Group Booking Information</h2>
            <table align="center" width="70%" border="1">
                <tr> 
                    <th>Group ID</th>
                    <th>True Name</th>
                    <th>Phone Number</th>
                    <th>Number Of People</th>
                    <th>Operation</th>
                </tr>
                <c:if test="${not empty listc}">
                    <c:forEach items="${listc}" var="books">
                        <tr align="center">
                            <td>${books.bid}</td>
                            <td>${books.bname}</td>
                            <td>${books.bnumber}</td>
                            <td>${books.bpeople}</td>
                            <td><a href="deleteAddGroup?id=${books.bid}">Delete</a></td>
                        </tr>
                    </c:forEach>
                </c:if>
            </table>
            <br/><br/>

            <h2 align="center">Book Hotel Information</h2>
            <table align="center" width="70%" border="1">
                <tr>
                    <th>Hotel Name</th>
                    <th>True Name</th>
                    <th>Room Type</th>
                    <th>Check-in Date</th>
                    <th>Check-out Date</th>
                    <th>Phone Number</th>
                    <th>Number Of People</th>
                    <th>Operation</th>
                </tr>
                <c:if test="${not empty listd}">
                    <c:forEach items="${listd}" var="bhotel">
                        <tr align="center">
                            <td>${bhotel.hid}</td>
                            <td>${bhotel.hname}</td>
                            <td>${bhotel.hrt}</td>
                            <td>${bhotel.cid}</td>
                            <td>${bhotel.cod}</td>
                            <td>${bhotel.hnumber}</td>
                            <td>${bhotel.hpeople}</td>
                            <td><a href="deleteBookHotel?id=${bhotel.cid}">Delete</a></td>
                        </tr>
                    </c:forEach>
                </c:if>
            </table>

        </div></br><br/></br>

        <div class="foot">
            <h1 align="center">&copy;2012-2018 NIIT China LTD. All Rights Reserved.</h1>
        </div>

    </body>
</html>
