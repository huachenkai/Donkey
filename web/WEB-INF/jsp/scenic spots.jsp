<%-- 
    Document   : scenic spots
    Created on : 2018-6-2, 16:39:17
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

        <div id="remen">
            <table align="center" cellpadding="8">
                <h2 align="center">Hot Spots</h2>
                <tr>
                    <td><a href="Shanghaidishini"><img src="/Donkey1/Galleria/images/shanghaidishini.png" height="200" width="380"></a></td>
                    <td><a href="Guangzhouchanglong"><img src="/Donkey1/Galleria/images/guangzhouchanglong.png" height="200" width="380"></a></td>
                    <td><a href="TheIP"><img src="/Donkey1/Galleria/images/gugong.png" height="200" width="380"></a></td>
                </tr>
                <tr>
                    <td align="center">Shanghai Disneyland</td>
                    <td align="center">Guangzhou Changlong Zoo</td>
                    <td align="center">The Imperial Palace</td>
                </tr>
                <tr>
                    <td><a href="SHOPT"><img src="/Donkey1/Galleria/images/shanghaidongfangmingzhu.png" height="200" width="380"></a></td>
                    <td><a href="HKOP"><img src="/Donkey1/Galleria/images/s7.png" height="200" width="380"></a></td>
                    <td><a href="GZCLWP"><img src="/Donkey1/Galleria/images/s8.png" height="200" width="380"></a></td>
                </tr>
                <tr>
                    <td align="center">Shanghai Oriental Pearl Tower</td>
                    <td align="center">Hong Kong Ocean Park</td>
                    <td align="center">Guangzhou changlong water park</td>
                </tr>
            </table>
            <br/><br/>
            <table align="center" cellpadding="8">
                <h2 align="center">Zhejiang</h2>
                <tr>
                    <td><a href="WZ"><img src="/Donkey1/Galleria/images/s1.png" height="200" width="380"></a></td>
                    <td><a href="OMONF"><img src="/Donkey1/Galleria/images/s2.png" height="200" width="380"></a></td>
                    <td><a href="IWL"><img src="/Donkey1/Galleria/images/s3.png" height="200" width="380"></a></td>
                </tr>
                <tr>
                    <td align="center">WuZhen</td>
                    <td align="center">Oriental mythology of ningbo fangte</td>
                    <td align="center">Impression west lake</td>
                </tr>
                <tr>
                    <td><a href="MP"><img src="/Donkey1/Galleria/images/s4.png" height="200" width="380"></a></td>
                    <td><a href="HFATC"><img src="/Donkey1/Galleria/images/s5.png" height="200" width="380"></a></td>
                    <td><a href="RWP"><img src="/Donkey1/Galleria/images/s6.png" height="200" width="380"></a></td>
                </tr>
                <tr>
                    <td align="center">Mount putuo</td>
                    <td align="center">Hengdian film and television city</td>
                    <td align="center">Ramon world park</td>
                </tr>
            </table>
            <br/><br/>
            <table align="center" cellpadding="8">
                <h2 align="center">Shanghai</h2>
                <tr>
                    <td><a href="Shanghaidishini"><img src="/Donkey1/Galleria/images/shanghaidishini.png" height="200" width="380"></a></td>
                    <td><a href="SWP"><img src="/Donkey1/Galleria/images/s9.png" height="200" width="380"></a></td>
                    <td><a href="SHV"><img src="/Donkey1/Galleria/images/s10.png" height="200" width="380"></a></td>
                </tr>
                <tr>
                    <td align="center">Shanghai Disneyland</td>
                    <td align="center">Shanghai wildlife park</td>
                    <td align="center">Shanghai happy valley</td>
                </tr>
                <tr>
                    <td><a href="SHOPT"><img src="/Donkey1/Galleria/images/shanghaidongfangmingzhu.png" height="200" width="380"></a></td>
                    <td><a href="SCB"><img src="/Donkey1/Galleria/images/s11.png" height="200" width="380"></a></td>
                    <td><a href="SSATM"><img src="/Donkey1/Galleria/images/s12.png" height="200" width="380"></a></td>
                </tr>
                <tr>
                    <td align="center">Shanghai Oriental Pearl Tower</td>
                    <td align="center">Shanghai central building</td>
                    <td align="center">Shanghai science and technology museum</td>
                </tr>
            </table>
            <br/><br/>
            <!--            <table align="center" cellpadding="8">
                            <h2 align="center">Guangdong</h2>
                            <tr>
                                <td><img src="/Donkey1/Galleria/images/s8.png" height="200" width="380"></td>
                                <td><img src="/Donkey1/Galleria/images/guangzhouchanglong.png" height="200" width="380"></td>
                                <td><img src="/Donkey1/Galleria/images/s13.png" height="200" width="380"></td>
                            </tr>
                            <tr>
                                <td align="center">Guangzhou changlong water park</td>
                                <td align="center">Guangzhou Changlong Zoo</td>
                                <td align="center">Windows to the world in shenzhen</td>
                            </tr>
                            <tr>
                                <td><img src="/Donkey1/Galleria/images/s14.png" height="200" width="380"></td>
                                <td><img src="/Donkey1/Galleria/images/s15.png" height="200" width="380"></td>
                                <td><img src="/Donkey1/Galleria/images/s16.png" height="200" width="380"></td>
                            </tr>
                            <tr>
                                <td align="center">Zhuhai changlong ocean kingdom</td>
                                <td align="center">East China overseas Chinese city</td>
                                <td align="center">Shenzhen happy valley</td>
                            </tr>
                        </table>-->
        </div>
        <div class="foot">
            <h1 align="center">&copy;2012-2018 NIIT China LTD. All Rights Reserved.</h1>
        </div>
    </body>
</html>
