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
                var uname = document.ureg.username.value;
                var pass = document.ureg.password.value;
                var cpass = document.ureg.cpassword.value;
                var mail = document.ureg.mail.value;
                var name = document.ureg.name.value;
                var ph = document.ureg.mobile.value;

                if (name == 0) {
                    alert("Enter name");
                    document.ureg.name.focus();
                    return false;
                }
                if (uname == 0) {
                    alert("Enter username");
                    document.ureg.username.focus();
                    return false;
                }
                if (pass == 0) {
                    alert("Enter password");
                    document.ureg.password.focus();
                    return false;
                }
                if (cpass != pass) {
                    alert("Incorrect password");
                    document.ureg.cpassword.focus();
                    return false;
                }
                if (mail == 0) {
                    alert("Enter mailid");
                    document.ureg.mail.focus();
                    return false;
                }
                if (ph == 0) {
                    alert("Enter your mobile no");
                    document.ureg.mobile.focus();
                    return false;
                }
                if (isNaN(ph)) {
                    alert("Invalid phoneno");
                    document.ureg.mobile.focus();
                    return  false;
                }
            }
        </script>
        <style>
            input{
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
                background-color: #cccccc;
                position: relative;
                left: 305px;
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
                                        <li ><a href="user.jsp">User</a></li>
                                        <li><a href="admin.jsp">Admin</a></li>
                                        <li class="current_page_item"><a href="registration.jsp">Cloud</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="position: relative;left: 75px;">
                    <center>
                        <fieldset style="background-color: gray; width: 1000px" >	
                        <font style="font-size: 50px;color: white">Stealthy Denial of Service Strategy in Cloud Computing</font>
                        <br>
                    </fieldset>	
                    </center>
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
                                        <!--                                                            <div style="background-color: gray">
                                                                                                    <img  style="position: absolute; left:150px"src="images/hh.png" width="200" height="200">
                                                                                                    <span style="position: absolute; left:80px;top: 450px;width: 400px;color : #cccccc ; font-size: 28px;">
                                                                                                        This page is applied by VAIT .It cannot accept any sql injections and xss attacks.
                                                                                                    </span>
                                                                                                    </div>-->
                                        <!--                                                             <img src="images/hh.png" width="400" style="position: absolute; left: 900px;">-->
                                        <fieldset style="background-color:cornflowerblue;margin-left: 300px;width: 500px">
                                            <!--                                                                <img src="images/u1.png" width="480">-->
                                            <br></br>  
                                            <h1 style="position :relative;left: 50px"><img src="images/register.jpg" width="400px;"></h1>
                                            <form action="user_reg_action.jsp" name="ureg"  method="get" onsubmit="return validation()"> 
                                                <!--                  USERNAME:<br>-->

                                                ENTER NAME:<BR>
                                                <input type="text" name="name" placeholder="Enter your name" ><br></br>
                                                ENTER USERNAME:<BR>
                                                <input type="text" name="username" placeholder="Enter username"><br></br>
                                                <!--                  PASSWORD:<br>-->
                                                ENTER PASSWORD:<BR>
                                                <input type="password" name="password" placeholder="Enter password"><br></br>
                                                ENTER CONFIRM PASSWORD:<BR>
                                                <input type="password" name="cpassword" placeholder="confirm your password"><br></br>
                                                ENTER MAIL:<BR>
                                                <input type="email" name="mail" placeholder="Enter your email"><br></br>
                                                ENTER PHONE NO:<BR>
                                                <input type="text" name="mobile" placeholder="Enter your mobile no" maxlength="10"><br></br>
                                                &nbsp;<input type="submit" id="but" value="submit"style="background-color: blue;color: #ffffff"/>
                                                &nbsp;&nbsp;   <input type="reset"id="but" value="Reset" style="background-color: BLUE;color: #ffffff"></input><br></br>
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