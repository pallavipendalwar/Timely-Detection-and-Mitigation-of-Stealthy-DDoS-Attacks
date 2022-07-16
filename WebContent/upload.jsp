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
                var uname = document.name.file.value;
                if (uname == 0) {
                    alert('select file to upload');
                    document.name.file.focus();
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
                height: 250px;
                background-color: cornflowerblue;
                position: relative;
                left: 400px;
                top: -350px;
            }
            form{
                position: relative;
                left: 150px;
                color: #000;
            }

        </style>
        <script type="text/javascript">
            window.history.forward(1);
            function noBack() {
                window.history.forward();
            }
        </script>
        <!--[if IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
    </head>
    <body>
        <%
            if (request.getParameter("yes") != null) {
                out.println("<script>alert('file uploaded...')</script>");
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
                                        <li ><a href="user_page.jsp">Homepage</a></li>
                                        <li class="current_page_item"><a href="upload.jsp">Upload</a></li>
                                        <li><a href="download.jsp">Download</a></li>
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
                                        <img src="images/cloud1.jpg" width="700">
                                        <%  HttpSession user = request.getSession();
                                            String uname = user.getAttribute("username").toString();
                                        %>
                                        <fieldset id="ff" style="left : 700px">
                                            <br></br><br></br>
                                            <form name="name" action="upload" method="post" enctype="multipart/form-data" onsubmit="return validation()">
                                                <font style="font-size: 20px;"> Select File:</font><br>
                                                <input type="file" name="file" ><br></br>
                                                <button style="background-color: green" ><img id="but" src="images/ic.gif" height="100" width="100"></button>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <button style="background-color: red;position: relative;top: -10px; height: 40px;width: 80px;"type="reset" >Reset</button>
                                            </form>
                                        </fieldset>
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