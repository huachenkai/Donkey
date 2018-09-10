<%-- 
    Document   : hotel
    Created on : 2018-6-3, 11:14:50
    Author     : huachenkai
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
            .line {
                font-size:0px;
                border-top:1px solid #800000;
                margin-left: 5%;
                margin-right: 5%;
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
                <a href="index">Home Page</a> |
                <a href="hotel.htm">Hotel</a> |
                <a href="Restaurant.htm">Restaurant</a> |
                <a href="scenic spots.htm">scenic spots</a> |
                <a href="Group">Group travelling</a> |
                <a href="feedback.htm">Feed Back</a>
            </nav>
        </div>

        <h3 style=" margin-left: 5%; margin-top: 50px;">Hot Hotel</h3>
        <div class="line"></div>

        <table align="center" style="margin-top: 50px; ">
            <tr>
                <td>
                    <a href="Sheraton"><img src="/Donkey1/Galleria/images/酒店外观7.jpg" alt=""  height="280" width="280"/></a>
                </td>
                <td style=" padding: 20px"></td>
                <td>
                    <a href="fourpoints"><img src="/Donkey1/Galleria/images/酒店外景.jpg" alt="" height="280" width="280"/></a>
                </td>
                <td style=" padding: 20px"></td>
                <td>
                    <a href="sanya"><img src="/Donkey1/Galleria/images/酒店外景2.jpg" alt="" height="280" width="280"/></a>
                </td>
            </tr>
            <tr>
                <td>
                    <p align="center" style="font-family: 'Trebuchet Ms',Arial,Helvetica,sans-serif;">Sheraton Hotel (HuZhou)</p>
                </td>
                <td style=" padding: 20px"></td>
                <td>
                    <p align="center" style="font-family: 'Trebuchet Ms',Arial,Helvetica,sans-serif;">FourPoints Hotel (Langfang)</p>
                </td>
                <td style=" padding: 20px"></td>
                <td>
                    <p align="center" style="font-family: 'Trebuchet Ms',Arial,Helvetica,sans-serif;">Sanya Hotel (Sanya)</p>
                </td>
            </tr>
        </table>
        <table align="center" style="margin-top: 50px;">
            <tr>
                <td>
                    <a href="park"><img src="/Donkey1/Galleria/images/酒店外景3.jpg" alt="" height="280" width="280"/></a>
                </td>
                <td style=" padding: 20px"></td>
                <td>
                    <a href="xiamen"><img src="/Donkey1/Galleria/images/酒店外景4.jpg" alt="" height="280" width="280"/></a>
                </td>
                <td style=" padding: 20px"></td>
                <td>
                    <a href="zhuzhu"><img src="/Donkey1/Galleria/images/酒店外景5.jpg" alt="" height="280" width="280"/></a>
                </td>
            </tr>
            <tr>
                <td> 
                    <p align="center" style="font-family: 'Trebuchet Ms',Arial,Helvetica,sans-serif;">Park Hotel (Guilin)</p>
                </td>
                <td style=" padding: 20px"></td>
                <td> 
                    <p align="center" style="font-family: 'Trebuchet Ms',Arial,Helvetica,sans-serif;">XiaMen Hotel (Xiamen)</p>
                </td>
                <td style=" padding: 20px"></td>
                <td> 
                    <p align="center" style="font-family: 'Trebuchet Ms',Arial,Helvetica,sans-serif;">Zhuzhu Hotel (Qingdao)</p>
                </td>
            </tr>
        </table><br/><br/>

        <div class="foot">
            <h1 align="center">&copy;2012-2018 NIIT China LTD. All Rights Reserved.</h1>
        </div>

    </body>
</html>
