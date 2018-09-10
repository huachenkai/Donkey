<%-- 
    Document   : login
    Created on : 2018-6-2, 16:37:16
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            form{
                position: absolute;
                left: 41%;
                top: 30%;
            }
            #back{
                position: absolute;
                top: 20px;
                right: 20px;
                color: #fff;
                text-align: center;
            }
            .c3{
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
            #login{
                height: 30px;
                width: 150px;
                background-color: burlywood;
                color: black;
                opacity: 0.9;
                font-family: cursive;
                font-size: 20px;
                margin-top: 30px;
            }
        </style>
    </head>
    <body style="background-image: url(/Donkey1/Galleria/images/c.jpg); background-size: cover; background-repeat: no-repeat;">
        <div>
            <a href="Welcome.htm" id="back">Back</a><br/>
            <h1 align="center" style=" margin-top: 110px; margin-right: 40px;font-family:'Trebuchet Ms',Arial,Helvetica,sans-serif; color:#0d0d0e">Login</h1>
            <form action="login" method="post" style=" font-family: Verdana,Geneva,sans-serif">
                <label for="name">Name</label>
                <input style="padding-left:15px;" type="text" name="name" id="name" class="c3" required="required" placeholder="Enter Your Name" maxlength="10" />

                <label for="password">Password</label>
                <input style="padding-left:15px;" type="password" name="password" id="password" class="c3" required="required" placeholder="Enter Your Password" maxlength="20" />

                <input type="submit"  name="login" id="login" value="Login"/>
                <a href="register.htm"><b>Have no ID?</b></a>
            </form>

        </div>
    </body>
</html>
