<%-- 
    Document   : UpdateGroups
    Created on : 2018-6-14, 9:29:57
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
                top: 10%;
            }
            .c3{
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
            .c4{
                height: 40px;
                width: 100px;
                background-color:#ddd;
                margin-left: 30px;
            }
        </style>
    </head>
    <body>
        <div>
            <form action="updateGroupss" method="POST">
                <label>Group ID</label>
                <input style="padding-left:10px;" name="gid" type="text" required="required" class="c3" value="${groups.gid}" /><br/>

                <label>Transportation</label>
                <input style="padding-left:10px;" name="gstart" type="text" required="required" class="c3" value="${groups.gstart}"/><br/>

                <label>scenic</label>
                <input style="padding-left:10px;" name="gscenic" type="text" required="required" class="c3" value="${groups.gscenic}"/><br/>

                <label>Date</label>
                <input style="padding-left:10px;" name="gtime" type="date" required="required" class="c3" value="${groups.gtime}"/><br/>

                <label>Charge</label>
                <input style="padding-left:10px;" name="gcharge" type="text" required="required" class="c3" value="${groups.gcharge}"/><br/>

                <label>Number</label>
                <input style="padding-left:10px;" name="gnumber" type="text" required="required" class="c3" value="${groups.gnumber}"/><br/>

                <label>Way</label>
                <input style="padding-left:10px;" name="gway" type="text" required="required" class="c3" value="${groups.gway}"/><br/>

                <input class="c4" type="submit" value="Update" />
            </form>
        </div>
    </body>
</html>
