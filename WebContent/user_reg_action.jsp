<%@page import="java.sql.Statement"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.Dbconnection"%>
<%
try {
            String name=request.getParameter("name");
            String uname=request.getParameter("username");
            String pass=request.getParameter("password");
            String mail=request.getParameter("mail");
            String ph=request.getParameter("mobile");
            
          Connection con= Dbconnection.getConn();
          Statement st=con.createStatement();
           int i=st.executeUpdate("insert into user_reg (username,name,password,mail,phoneno,activate)values('"+uname+"','"+name+"','"+pass+"','"+mail+"','"+ph+"','no')");
          con.close();
           if(i!=0){
              response.sendRedirect("registration.jsp?status='registered'");
          }
        } 
        catch(Exception e){
            out.println(e);
        }
%>
