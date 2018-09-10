<%-- 
    Document   : BookHotel1
    Created on : 2018-6-12, 21:56:54
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            form{
                position: absolute;
                left: 41%;
                top: 5%;
            }
            #back{
                position: absolute;
                top: 20px;
                right: 20px;
                text-align: center;
            }
            .c1{
                height: 20px;
                width: 200px;
                font-family:"Comic Sans MS", cursive;
                display:block;
                background:#CCC;
                margin-bottom:5px;
                opacity: 0.8;
                -webkit-border-bottom-left-radius:45px;
                -webkit-border-top-right-radius:45px;
                -webkit-border-bottom-right-radius:45px;
                -webkit-border-top-left-radius:45px;
            }
            #hbook{
                height: 30px;
                width: 215px;
                background-color: #999999;
                color: black;
                font-family: cursive;
                font-size: 20px;
                margin-top: 30px;
            }
        </style>
    </head>
    <body>
        <div>
            <!--<a href="fourpoints" id="back">Back</a><br/>-->
            <form action="bookhotel" method="POST">
                <h1 style="font-family:'Trebuchet Ms',Arial,Helvetica,sans-serif; color:#0d0d0e">Application Form</h1><br/>
                <label for="bid">Hotel Name</label>
                <input style="padding-left:15px;" type="text" name="hid" id="hid" value="Fourpoints" readonly="true" class="c1" /><br/>

                <label for="bname">Room Type</label>
                <input style="padding-left:15px;" type="text" name="hrt" id="hrt" class="c1" placeholder="Standard/King Size" required="required" pattern="Standard||King Size" /><br/>
                
                <label for="bname">Name</label>
                <input style="padding-left:15px;" type="text" name="hname" id="hname" class="c1" placeholder="Your True Name" required="required" /><br/>

                <label for="birth">Check-in Date</label>
                <input style="padding-left:15px;" type="date" name="cid" id="cid" class="c1" required="required" /><br/>

                <label for="birth">Check-out Date</label>
                <input style="padding-left:15px;" type="date" name="cod" id="cod" class="c1" required="required" /><br/>

                <label for="bnumber">Phone Number</label>
                <input style="padding-left:15px;" type="text" name="hnumber" id="hnumber" class="c1" placeholder="Your Phone Number" required="required" pattern="1[3578][0-9]{9}"/><br/>

                <label for="bpeople">People Number</label>
                <input style="padding-left:15px;" type="text" name="hpeople" id="hpeople" class="c1" placeholder="How Many People(at most 3)" required="required" pattern="[1-3]{1}" />

                <input type="submit"  name="hbook" id="hbook" value="Book"/>
            </form>
        </div>
    </body>
</html>
