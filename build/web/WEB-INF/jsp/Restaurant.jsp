<%-- 
    Document   : Restaurant
    Created on : 2018-6-3, 11:15:04
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
        <div id="wenzhang" align="center">
            <h2>Gourmet articles</h2><br/><br/>
            <a href="wenzhang1.htm">A small summer is a complete summer.</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="wenzhang2.htm">Come on, take the kids to a barbecue soon.</a><br/><br/>
            <a href="wenzhang3.htm">The next day the toilet straight tears.</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="wenzhang4.htm">The Japanese dinghy began to eat.</a><br/><br/>
            <a href="wenzhang5.htm">Hunan food is classic and delicious!</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="wenzhang6.htm">Crayfish, it's not good. It's my treat!</a><br/><br/>
        </div>
        <div>
            <table align="center">
                <tr>
                    <td><p style=" font-size: 30px;">TOP 10</p></td>
                </tr>
                <tr>
                    <td><h1>NO.1</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/bjfd.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>Beijing Restaruant</h3><br><p>Since 1900</p><br>
                        <p>Famous five-star century-old shop</p><br>
                        <p>Address : Dongcheng district dongchang 'an street</p><br>
                        <p>Telephone number : 010-6070-0198</p></td>
                </tr>
                <tr>
                    <td><h1>NO.2</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/shhpfd.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>Shanghai Peace Restaruant</h3><br><p>Since 1929</p><br>
                        <p>One of the earliest surviving restaurants in Shanghai</p><br>
                        <p>Address : 20 nanjing east road, huangpu district, Shanghai</p><br>
                        <p>Telephone number : (86) (21) 5101 3030</p></td>
                </tr>
                <tr>
                    <td><h1>NO.3</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/bjgjfd.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>Beijing International Restaruant</h3><br><p>Since 1987</p><br>
                        <p>Five-star business hotel</p><br>
                        <p>Address : 9 jianguo mennei street, Beijing, China</p><br>
                        <p>Telephone number : 010-6370-0298</p></td>
                </tr>
                <tr>
                    <td><h1>NO.4</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/jlfd.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>Jingling Restaruant</h3><br><p>Since 1983</p><br>
                        <p>The pioneer of China modern hotel, five-star hotel</p><br>
                        <p>Address : Xinjiekou square, 2 hanzhong road</p><br>
                        <p>Telephone number : 010-3470-3333</p></td>
                </tr>
                <tr>
                    <td><h1>NO.5</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/klfd.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>Kunlun Restaruant</h3><br><p>Since 1989</p><br>
                        <p>Top 50 star hotels and top 10 hotel brands</p><br>
                        <p>Address : The light horse river</p><br>
                        <p>Telephone number : 2252-9535</p></td>
                </tr>
                <tr>
                    <td><h1>NO.6</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/jgfd.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>Jianguo Restaruant</h3><br><p>Since 1982</p><br>
                        <p>It is the only garden hotel in Beijing CBD</p><br>
                        <p>Address : No. 5, jianguomen street, chaoyang district, Beijing</p><br>
                        <p>Telephone number : 5072-2138</p></td>
                </tr>
                <tr>
                    <td><h1>NO.7</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/xgll.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>Shangri-la Restaruant</h3><br><p>Since 1971</p><br>
                        <p>The world's top luxury hotel group, top 10 hotel brands</p><br>
                        <p>Address : No. 33 fucheng road, pudong new area, Shanghai</p><br>
                        <p>Telephone number : 6170-9167</p></td>
                </tr>
                <tr>
                    <td><h1>NO.8</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/xyfd.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>The Xiyuan Restaruant</h3><br><p>Since 1954</p><br>
                        <p>Five star hotels, ten best hotel brands</p><br>
                        <p>Address : Haidian district, Beijing</p><br>
                        <p>Telephone number : 2270-3323</p></td>
                </tr>
                <tr>
                    <td><h1>NO.9</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/xzfd.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>Tibet Restaruant</h3><br><p>Since 1988</p><br>
                        <p>Five-star Tibetan culture theme hotel</p><br>
                        <p>Address : Dongcheng district dongchang 'an street</p><br>
                        <p>Telephone number : 5656-6688</p></td>
                </tr>
                <tr>
                    <td><h1>NO.10</h1></td>
                    <td style=" padding: 20px"></td>
                    <td><img src="/Donkey1/Galleria/images/hhfd.png" height="300" width="440"></td>
                    <td style=" padding: 30px"></td>
                    <td><h3>The Yellow Sea Restaruant</h3><br><p>Since 1983</p><br>
                        <p>Shandong excellent star hotel, Qingdao city top ten star hotel</p><br>
                        <p>Address : No. 75, yanan road, Qingdao city</p><br>
                        <p>Telephone number : 6072-0568</p></td>
                </tr>
            </table>
        </div>
        <div class="foot">
            <h1 align="center">&copy;2012-2018 NIIT China LTD. All Rights Reserved.</h1>
        </div>
    </body>
</html>
