<%@page import="actions.deactivate"%>
<%@page import="attack_prevention.xss"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@ page import="org.apache.commons.lang.StringEscapeUtils"%>
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
                background-color: cornflowerblue;
                position: relative;
                left: 375px;
            }
            form{
                position: relative;
                left: 150px;
                color: #000;
            }
            table{
                /*        position: relative;
                        left: 175px; */
                width: 750px;   
                background-image: url(images/tb.jpg);
            }
            td{
                text-align: center;
            }
            table,td,tr{
                border-style: ridge;
                border-collapse: collapse;
            }
            tr{
                text-align: center;
                height: 30px;
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
                                        <li ><a href="upload.jsp">Upload</a></li>
                                        <li><a href="download.jsp">Download</a></li>
                                        <li><a href="search.jsp">Search</a></li>
                                        <li><a href="user_page.jsp">Home</a></li>
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
                                        <%  String id = null;
                                            HttpSession user = request.getSession();
                                            String uname = user.getAttribute("username").toString();
                                            String k = request.getParameter("kword");
                                            boolean st = new xss().checkXss(k);
                                            Connection con = Dbconnection.getConn();
                                            PreparedStatement ps = null;
                                            if (st) {
                                        %>
                                        <p style="font-size: 20px;">   Welcome ! <font style="color: black"><%=uname%> <font></font></p> <br></br>
                                        <form action="" name="name" method="post" onsubmit="return validation()">
                                            <font style="font-size: 18px;">Search files...</font><br>
                                            <input id="id"type="search" name="kword" value="<%=k%>"placeholder="Enter word "><img src="images/ss_1.png" height="28"></input>
                                        </form><br></br>

                                        <%

                                            //Connection con=Dbconnection.getConn();
                                            ps = con.prepareStatement("select * from files where owner_=? and keyword_ like ?");
                                            ps.setString(1, uname);
                                            ps.setString(2, k + "%");
                                            ResultSet rs = ps.executeQuery();
                                        %>
                                        <table>
                                            <caption><h2>Search Result</h2></caption>
                                            <tr style="background-color: yellowgreen;font-size: 19px;color: white;">
                                                <td>FILENAME</td> <td>OWNER</td> <td>TIME</td> <td>SIZE</td>
                                            </tr>

                                            <%        while (rs.next()) {
                                                    id = rs.getString("id");
                                            %>
                                            <tr style="color: white;font-size: 18px;">
                                                <td><a href="download?<%=id%>"><%=rs.getString("filename")%><img src="images/d.png" width="50" height="30"/></a></td>  
                                                <td><%=rs.getString("owner_")%></td>  
                                                <td><%=rs.getString("time_")%></td>  
                                                <td><%=rs.getString("size_")%>bytes</td>
                                            </tr>

                                            <%
                                                    }
                                                } else {
                                                    //         out.println("id is:"+id);
                                                    ps = con.prepareStatement("update user_reg set activate='no' where  username=?");
                                                    ps.setString(1, uname);
                                                    ps.execute();
                                                    out.println("<h1 style='text-align:center;position: relative;color: black;font-size: 40px;'>Account got blocked due to DOS Attack....</h1>");
                                                }
                                            %>
                                        </table>
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