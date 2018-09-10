<%-- 
    Document   : feedback
    Created on : 2018-6-2, 16:38:24
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            #name{
                height: 20px;
                width: 150px;
            }
            #pnumber{
                height: 20px;
                width: 150px;
            }
            #usuggest{
                width: 400px;
                height: 400px;
            }
            input::-ms-input-placeholder{text-align: center;}
            input::-webkit-input-placeholder{text-align: center;}
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
            <h3 id="CH">Consumer Hotline : 400-1688-688</h3>
        </div>


        <div align="center" id="topnav" style="float:left; width: 100%; height: 40px; word-spacing: 10px; font-size: 25px; 
             padding-bottom: 0px; margin-left: 0%; font-family: 'Comic Sans MS',cursive;
             margin-top: 1%;">
            <nav>
                <a href="index.htm?id=${user.id}">Home Page</a> |
                <a href="hotel.htm?id=${user.id}">Hotel</a> |
                <a href="Restaurant.htm?id=${user.id}">Restaurant</a> |
                <a href="scenic spots.htm?id=${user.id}">scenic spots</a> |
                <a href="Group?id=${user.id}">Group travelling</a> |
                <a href="feedback.htm?id=${user.id}">Feed Back</a>
            </nav>
        </div>


        <div style="width:100%;text-align: center;">
            <h1 id="fb">Feed Back</h1><br/><br/>
            <form action="feedback" method="POST">
                <input id="usuggest" name="usuggest" type="text" placeholder="Suggests" /><br/><br/><br/>
                <button type="submit" >Submit</button>
            </form>
        </div><br/><br/>


        <div class="foot">
            <h1 align="center">&copy;2012-2018 NIIT China LTD. All Rights Reserved.</h1>
        </div>
    </body>
</html>
