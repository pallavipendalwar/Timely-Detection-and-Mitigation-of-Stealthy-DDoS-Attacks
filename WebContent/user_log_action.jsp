<%@page import="java.sql.Statement"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.Dbconnection"%>
<%
            String uname=request.getParameter("username");
            String pass=request.getParameter("password");
          try{  
          Connection con= Dbconnection.getConn();
          Statement st=con.createStatement();
          ResultSet rt=st.executeQuery("select * from user_reg where username='"+uname+"'");
          if(rt.next()){
              String p=rt.getString("password");
              String activate=rt.getString("activate");
              if(pass.equalsIgnoreCase(p)){
                  if(activate.equalsIgnoreCase("yes")){
                      HttpSession user=request.getSession(true);
                      user.setAttribute("username", uname);
                      out.println("Success.....");
                      response.sendRedirect("user_page.jsp");
                  }
                  else{
                      out.println("Your not Yet Activeted");
                  }
              }
              else{
                  out.println("incorrect password");
              }
          }
          else{
              out.println("Incorrect username");
          }
        }
        catch(Exception e){
            out.println(e);
        }
%>