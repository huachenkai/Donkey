<%-- 
    Document   : BookGroup
    Created on : 2018-6-11, 20:46:31
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        form{
            position: absolute;
            left: 41%;
            top: 20%;
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
        #bbook{
            height: 30px;
            width: 200px;
            background-color: #999999;
            color: black;
            font-family: cursive;
            font-size: 20px;
            margin-top: 30px;
        }
    </style>
    <body>
        <div>
            <!--<a href="Group" id="back">Back</a><br/>-->
            <form action="addgroup" method="POST">
                <h1 style="font-family:'Trebuchet Ms',Arial,Helvetica,sans-serif; color:#0d0d0e">Application Form</h1><br/>
                <label for="bid">Group ID</label>
                <input type="text" name="bid" id="bid" value="${gid}" readonly="true" class="c1" /><br/>

                <label for="bname">Name</label>
                <input type="text" name="bname" id="bname" class="c1" placeholder="Your True Name" required="required" /><br/>

                <label for="bnumber">Phone Number</label>
                <input type="text" name="bnumber" id="bnumber" class="c1" placeholder="Your Phone Number" required="required" pattern="1[3578][0-9]{9}"/><br/>

                <label for="bpeople">People Number</label>
                <input type="text" name="bpeople" id="bpeople" class="c1" placeholder="How Many People(at most 9)" required="required" pattern="[1-9]{1}" />

                <input type="submit"  name="bbook" id="bbook" value="Book"/>
            </form>
        </div>
    </body>
</html>
