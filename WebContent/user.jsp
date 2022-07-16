<!DOCTYPE HTML>
<!--
        Affinity by TEMPLATED
        templated.co @templatedco
        Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
    <head>
        <title>Evaluation of Web Security</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <noscript>
        <link rel="stylesheet" href="css/5grid/core.css" />
        <link rel="stylesheet" href="css/5grid/core-desktop.css" />
        <link rel="stylesheet" href="css/5grid/core-1200px.css" />
        <link rel="stylesheet" href="css/5grid/core-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        </noscript>
        <script src="jquery.min.js"></script>
        <script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>
        <script>
            function validation() {
                var uname = document.ulogin.username.value;
                var pass = document.ulogin.password.value;

                if (uname == 0) {
                    alert("Enter username");
                    document.ulogin.username.focus();
                    return false;
                }
                if (pass == 0) {
                    alert("Enter password");
                    document.ulogin.password.focus();
                    return false;
                }
            }
        </script>
        <style>
            #id{
                width: 200px;
                height: 25px;
                background-color: #D5D5D5;
            }
            #but{
                width: 70px;
                height: 30px;
            }
            #ff{
                width: 500px;
                /*background-color: #cccccc;*/
                position: relative;
                left: 375px;
            }
            form{
                position: relative;
                left: 150px;
                color: #000;
            }

        </style>
        <!--[if IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
    </head><body>
        <%
            if (request.getParameter("status") != null) {
                out.println("<script>alert('Registered')</script>");
            }

        %>
        <div id="wrapper">
            <!--	<div id="header-wrapper">-->
            <header id="header">

                <div class="5grid-layout">

                </div>
                <div class="5grid-layout">
                    <div class="row">
                        <div class="12u" id="menu">
                            <div id="menu-wrapper">
                                <nav class="mobileUI-site-nav">
                                    <ul>
                                        <li ><a href="index.html">Homepage</a></li>
                                        <li class="current_page_item"><a href="user.jsp">User</a></li>
                                        <li><a href="admin.jsp">Cloud</a></li>
                                        <li><a href="registration.jsp">Registration</a></li>

                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="position: relative;left: 75px;">
                    <fieldset style="background-color: gray; width: 1200px" >	
                        <h1>
                            <font style="font-size: 50px;color: white">Stealthy Denial of Service Strategy in Cloud Computing</font>
                        </h1>
                        <br>
                    </fieldset>					
                </div>
            </header>
            <!--	</div>-->
            <div id="page-wrapper" class="5grid-layout">
                <!--		<div class="5grid-layout">
                                        <div class="row">
                                                <div class="12u">
                                                        <div id="banner"><a href="#"><img src="images/ev.png" alt=""></a></div>
                                                </div>
                                        </div>
                                </div>-->
                <div class="5grid-layout">
                    <div class="row">
                        <div class="6u">
                            <div id="content">
                                <section>
                                    <div class="post">
                                        <div>
                                            <img  style="position: absolute; left:150px"src="images/ddos.png" width="700" height="475">
                                            <span style="position: absolute; left:150px;top: 450px;width: 400px;color : #cccccc ; font-size: 28px;">
                                            </span>
                                        </div>
                                        <!--                                                             <img src="images/hh.png" width="400" style="position: absolute; left: 900px;">-->
                                        <fieldset id="ff" style="left: 700px">
                                            <img src="images/user.jpg" width="480">
                                            <br></br>  <br></br>
                                            <form action="user_log_action.jsp" name="ulogin" style="left: -200px;height: 200px" method="post" onsubmit="return validation()"> 
                                                <h2>User Login</h2>
                                                USERNAME:<br>
                                                <input type="text" id="id" name="username" placeholder="Enter username"/><br></br>
                                                PASSWORD:<br>
                                                <input type="password" id="id"name="password" placeholder="Enter password"/><br></br>
                                                <input type="submit" id="but" value="Login"style="background-color: yellowgreen;color: #ffffff"/>
                                                &nbsp;&nbsp;   <input type="reset"id="but" value="Reset" style="background-color: #AA3300;color: #ffffff"></input><br></br>
                                                <font style="font-size: 17px;">        New User <a href="registration.jsp" style="color: cadetblue">Register here</a>     </font>              
                                            </form>
                                            <br></br>  <br></br>
                                        </fieldset>

                                        <!--                                                                <p style="text-align: justify">
                                                                                                            <a href="#"><img src="images/ev.png" alt="" class="img-alignleft"></a>-->
                                    </div>
                                </section>

                            </div>
                        </div>
                        <div class="3u" id="sidebar1">
                            <section>

                            </section>

                        </div>

                    </div>
                </div>
            </div>
            <div class="5grid-layout">

            </div>
        </div>
        <div id="copyright" class="5grid-layout">
            <section>
            </section>
        </div>
    </body>
</html>