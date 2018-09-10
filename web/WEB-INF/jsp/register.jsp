<%-- 
    Document   : register
    Created on : 2018-6-2, 16:33:54
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            form{
                position: absolute;
                left: 41%;
                top: 10%;
            }
            #back{
                position: absolute;
                top: 20px;
                right: 20px;
                color: #fff;
            }
            .c1{
                height: 30px;
                width: 300px;
                font-family:"Comic Sans MS", cursive;
                display:block;
                background:#ddd;
                opacity: 0.7;
                margin-bottom:5px;
                -webkit-border-bottom-left-radius:45px;
                -webkit-border-top-right-radius:45px;
                -webkit-border-bottom-right-radius:45px;
                -webkit-border-top-left-radius:45px;
            }
            .c2{
                height: 40px;
                width: 100px;
                background-color:#22BCB9;
                -webkit-border-bottom-left-radius:45px;
                -webkit-border-top-right-radius:45px;
                -webkit-border-bottom-right-radius:45px;
                -webkit-border-top-left-radius:45px;
                margin-left: 30px;
                margin-top: 30px;

            }
        </style>
    </head>
    <body style="background-image: url(/Donkey1/Galleria/images/c.jpg); background-size: cover; background-repeat: no-repeat">
        <a href="Welcome.htm" id="back">Back</a>
        <div>
            <h1 align="center" style=" font-family:'Trebuchet Ms',Arial,Helvetica,sans-serif; color:#0d0d0e">Register</h1>
            <form action="register.htm" method="POST" style=" font-family: Verdana,Geneva,sans-serif">
                <label for="id">ID</label>
                <input style="padding-left:15px;" type="text" name="id" id="uid" class="c1" required="required" placeholder="Enter Your ID" maxlength="20" />

                <label for="name">Name</label>
                <input style="padding-left:15px;" type="text" name="name" id="name" class="c1" required="required" placeholder="Enter Your Name" maxlength="10" />

                <label for="password">Password</label>
                <input style="padding-left:15px;" type="password" name="pass" id="password" class="c1" required="required" placeholder="Enter Your Password" maxlength="20" />

                <label for="birth">Birthday</label>
                <input style="padding-left:15px;" type="date" name="birth" id="birth" class="c1" required="required" />

                <label for="email">Email</label>
                <input style="padding-left:15px;" type="email" name="email" id="email" class="c1" placeholder="@qq.com/@126.com/@163.com" required="required" pattern="[a-z0-9._+-]+@qq.com||[a-z0-9._+-]+@126.com||[a-z0-9._+-]+@163.com" />

                <label for="tel">Telephone</label>
                <input style="padding-left:15px;" type="text" name="mobile" id="tel" class="c1" required="required" pattern="1[3578][0-9]{9}"/>

                <input type="submit"  name="register" id="register" class="c2" value="Register"/>
                <input type="reset" name="registerbtn" id="registerbtn" class="c2" value="Cancel" />
            </form>
        </div>
    </body>
</html>
