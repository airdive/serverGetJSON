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
            
            function sendAjax1(){
                var userinfoRef = new userinfo('高洪岩new123', '123new');
                var jsonString = JSON.stringify(userinfoRef);
                $.ajax({
                    type: "POST",
                    data: jsonString,
                    url: "getJSON1.spring?t=" + new Date().getTime(),
                    contentType: "application/json"
                });
            }
            
            function sendAjax2(){
                var myArray = new Array();
                myArray[0] = "中国人1";
                myArray[1] = "中国人2";
                myArray[2] = "中国人3";
                myArray[3] = "中国人4";
                
                var jsonString = JSON.stringify(myArray);
                $.ajax({
                    type: "POST",
                    data: jsonString,
                    url: "getJSON2.spring?t=" + new Date().getTime(),
                    contentType: "application/json"
                });
            }
            
            function sendAjax3(){
                var myArray = new Array();
                myArray[0] = new userinfo("中国1","中国人1");
                myArray[1] = new userinfo("中国2","中国人2");
                myArray[2] = new userinfo("中国3","中国人3");
                myArray[3] = new userinfo("中国4","中国人4");
                var jsonString = JSON.stringify(myArray);
                $.ajax({
                    type: "POST",
                    data: jsonString,
                    url: "getJSON3.spring?t=" + new Date().getTime(),
                    contentType: "application/json"
                });
            }
            
            function sendAjax4(){
                var jsonObject = {
                	"username": "accp",
                	"work":[{"address":"address1"},{"address":"address2"}],
                	"school":{
                		"name":"lc",
                		"address":"bjq"
                	}
                };
                var jsonString = JSON.stringify(jsonObject);
                $.ajax({
                    type: "POST",
                    data: jsonString,
                    url: "getJSON4.spring?t=" + new Date().getTime(),
                    contentType: "application/json"
                });
            }
        </script>
    </head>
    <body>
        <input type="button" value="sendAjax1" onclick="sendAjax1()"/>
        <input type="button" value="sendAjax2" onclick="sendAjax2()"/>
        <input type="button" value="sendAjax3" onclick="sendAjax3()"/>
        <input type="button" value="sendAjax4" onclick="sendAjax4()"/>
    </body>
</html>