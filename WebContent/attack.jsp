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
                var kword = document.name.kword.value;
                if (kword == 0) {
                    alert("Enter word");
                    document.name.kword.focus();
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
                background-color: white;
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
    </head>
    <body >
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
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="position: relative;left: 75px;">
                    <fieldset style="background-color: gray; width: 1200px" >	
                        <h1>
                            <!--                              <font style="font-size: 50px;color: white">Evaluation of Web Security Mechanisms 
                            Using <br>Vulnerability & Attack Injection</font>-->
                            <img src="images/attackimage.jpg" width="1200" height="450">
                        </h1>
                        <br>
                    </fieldset>					
                </div>
            </header>
            <!--	</div>-->
            <div id="page-wrapper" class="5grid-layout">
                
                <div class="5grid-layout">
                    <div class="row">
                        <div class="6u">
                            <div id="content">
                                <section>
                                    <div class="post">
                                        <form action="attacker.jsp" name="name" method="post" onsubmit="return validation()">
                                            <font style="font-size: 18px;">Search files...</font><br>
                                            <input id="id"type="search" name="kword" placeholder="Enter word "><img src="images/ss_1.png" height="28"></input>
                                            <!--    <button ><img src="images/ss_1.png" height="25"></button>-->
                                        </form>
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