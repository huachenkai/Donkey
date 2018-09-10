<%-- 
    Document   : Sheraton
    Created on : 2018-6-12, 18:10:46
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #back{
                position: absolute;
                top: 20px;
                right: 20px;
            }
            .line {
                font-size:0px;
                border-top:1px solid #800000;
                margin-left: 5%;
                margin-right: 5%;
            }
            #hbook{
                position: absolute;
                right: 100px;
                top: 20px;
            }
        </style>
    </head>
    <body>
        <!--<a href="hotel" id="back">Back</a>-->
        <div>
            <br/><br/>
            <b style=" margin-left: 5%; font-family: 'Trebuchet Ms',Arial,Helvetica,sans-serif; font-size: 1.8em">About This Hotel</b>
            <form action="bookSheraton" method="GET">
                <input type="submit"  name="hbook" id="hbook" value="Book"/>
            </form>
            <div class="line"></div>
        </div>
        <div style=" height: 500px; margin: 0 ;padding: 0; border: 0;">
            <div style=" height: 50px"></div>
            <div  style="width:550px;height: 500px;float:left; margin-left: 150px;" >
                <h3>This is Standard</h3>
                <img src="/Donkey1/Galleria/images/标间.jpg" alt="" height="300" width="450"/> 
                <h4>Price</h4>
                <p style=" color: red">RMB1400.00</p>				
            </div>
            <div  style="width:550px; height: 500px;float:left; margin-left: 80px; ">
                <h3>This is King Size Room</h3>
                <img src="/Donkey1/Galleria/images/大床房.jpg" alt="" height="300" width="450"/>
                <h4>Price</h4>
                <p style=" color: red">RMB1500.00</p>
            </div>
        </div>
        <div style=" height: 500px; margin: 0 ;padding: 0; border: 0;">
            <div style=" height: 50px"></div>
            <div  style="width:550px;height: 500px;float:left; margin-left: 150px;" >
                <h3>This is the hotel lobby</h3>
                <img src="/Donkey1/Galleria/images/酒店大堂.jpg" alt="" height="300" width="450"/> 				
            </div>
            <div  style="width:550px; height: 500px;float:left; margin-left: 80px;">
                <h3>This is the Restaurant</h3>
                <img src="/Donkey1/Galleria/images/酒店餐厅.jpg" alt="" height="300" width="450"/>
            </div>
        </div>
    </body>
</html>
