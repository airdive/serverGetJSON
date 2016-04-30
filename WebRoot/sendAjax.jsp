<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <script src="js/jquery-1.11.1.min.js">
        </script>
        <script src="js/json2.js">
        </script>
        <script>
            function userinfo(username, password){
                this.username = username;
                this.password = password;
            }
            function sendAjax(){
                var userinfoRef = new userinfo('高洪岩', '123');
                var jsonStringRef = JSON.stringify(userinfoRef);
                $.post("getJSONString.spring?t=" + new Date().getTime(), {
                    jsonString: jsonStringRef
                });
            }
        </script>
    </head>
    <body>
        <input type="button" value="click" onclick="sendAjax()"l>
    </body>
</html>