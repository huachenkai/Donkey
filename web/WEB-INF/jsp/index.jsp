<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="/Donkey1/Galleria/js/jquery-3.2.1.js"></script>
        <script type="text/javascript" src="/Donkey1/Galleria/js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="/Donkey1/Galleria/js/jquery.leanModal.min.js"></script>
        <script src="/Donkey1/Galleria/js/jquery-1.8.3.js"></script>
        <script src="/Donkey1/Galleria/galleria/galleria-1.2.8.js"></script>
        <style>
            html, body, h1, h2, h3, p, ol, ul, li, a{
                padding: 0;
                border: 0;
                margin: 0;
            }
            .head{
                height: 90px;
            }
            .foot{
                height: 60px;
                line-height: 60px;
                background-color: pink;
            }
            #logo{
                left: 0%;
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
            .bar7 input {
                border:2px solid #000000;
                border-radius:5px;
                background:transparent;
                top:0;
                right:0;
            }
            .bar7 button {
                background:#000000;
                border-radius:0 5px 5px 0;
                width:60px;
                top:0;
                right:0;
            }
            .bar7 button:before {
                content:"Search";
                font-size:13px;
                color:#ff0066;
            }
            #login{
                position: absolute;
                right: 8%;
                top: 60px;
            }
            #register{
                position: absolute;
                right: 2%;
                top: 60px;
            }

            #huanying{
                position: absolute;
                right: 20px;
                top: 10px;
            }
            #logout{
                position: absolute;
                right: 20px;
                top: 50px;
            }
            #mi{
                position: absolute;
                top: 50px;
                right: 100px;
            }
        </style>
    </head>
    <body>
        <div class="head">
            <img src="/Donkey1/Galleria/images/logo.png" alt="logo" />
            <form action="weather.jsp" >

            </form>
            <!--            <form class="bar7">
                        <input type="text" name="Search" placeholder="Hotel/Restaurant/scenic spots">
                        <button type="submit"></button>
                        </form>-->
            <h3 id="huanying">Welcome Mr./Ms. ${user.name}</h3>
            <a href="MyInformation" id="mi">Update Information</a>
            <a href="Welcome" id="logout">Logout</a>
        </div>

        <div align="center" id="topnav" style="float:left; width: 100%; height: 40px; word-spacing: 10px; font-size: 25px; 
             padding-bottom: 0px; margin-left: 0%; font-family: 'Comic Sans MS',cursive;
             margin-top: 3%;">
            <nav>
                <a href="index">Home Page</a> |
                <a href="hotel.htm">Hotel</a> |
                <a href="Restaurant.htm">Restaurant</a> |
                <a href="scenic spots.htm">scenic spots</a> |
                <a href="Group">Group travelling</a> |
                <a href="feedback.htm">Feed Back</a>
            </nav>
        </div>


        <DIV style="width: 960px; height: auto; position: relative; padding-left: 29px; overflow: hidden; 
             background-color: white; margin:auto;">
            <div id="gallery">
                <img src="/Donkey1/Galleria/images/鼓浪屿日光岩全景.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/丽江古城大水车.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/五四广场-航拍.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/十七孔桥2.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/天坛.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/山北街西泠桥秋色.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/桂林山水.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/桂林日月双塔.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/神秘的玉龙雪山.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/雷峰塔2.jpg" alt=""/>
                <img src="/Donkey1/Galleria/images/鼓浪屿音乐厅.jpg" alt=""/>
            </div>
        </DIV>
        <script type="text/javascript">
            Galleria.loadTheme('/Donkey1/Galleria/galleria/themes/classic//galleria.classic.min.js');
            $("#gallery").galleria({
                width: 950,
                height: 400
            });
        </script>

        <div id="shengfen">
            <style type="text/css">
                .sfTable{
                    margin: 20px auto;
                    width: 80%;
                }
                .sfTable td{
                    text-align: center;
                    vertical-align: center;
                    color: #666;
                    padding-bottom: 10px;
                }
                .sfTable a{
                    font-size: 28px;
                    font-weight: bolder;
                    color: #CCC;
                    text-decoration: none;
                }
            </style>
            <table align="center" id="sf" class="sfTable">
                <tr>
                    <td><a href="Beijing.htm"><img src="/Donkey1/Galleria/images/beijing.jpg" height="300" width="400" style="border-radius:80px;"></a></td>
                    <td><a href="Shanghai.html"><img src="/Donkey1/Galleria/images/shanghai.jpg" height="300" width="400" style="border-radius:80px;"></a></td>
                </tr>
                <tr>
                    <td>Beijing</td>
                    <td>Shanghai</td>
                </tr>
                <tr>
                    <td><a href="Guangdong.html"><img src="/Donkey1/Galleria/images/guangdong.jpg" height="300" width="400" style="border-radius:80px;"></a></td>
                    <td><a href="Zhejiang.html"><img src="/Donkey1/Galleria/images/zhejiang.JPG" height="300" width="400" style="border-radius:80px;"></a></td>
                </tr>
                <tr>
                    <td>Guangdong</td>
                    <td>Zhejiang</td>
                </tr>
                <tr>
                    <td><a href="Shandong.html"><img src="/Donkey1/Galleria/images/shandong.jpg" height="300" width="400" style="border-radius:80px;"></a></td>
                    <td><a href="Chongqing.html"><img src="/Donkey1/Galleria/images/chongqing.jpg" height="300" width="400" style="border-radius:80px;"></a></td>
                </tr>
                <tr>
                    <td>Shandong</td>
                    <td>Chongqing</td>
                </tr>
            </table>
        </div>

        <div class="foot">
            <h1 align="center">&copy;2012-2018 NIIT China LTD. All Rights Reserved.</h1>
        </div>

    </body>

</html>
