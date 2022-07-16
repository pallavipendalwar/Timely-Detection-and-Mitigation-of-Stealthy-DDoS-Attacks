<%
  try {
           String uname=request.getParameter("username");
           String pass=request.getParameter("password");
           
           if(uname.equalsIgnoreCase("cloud")&&pass.equalsIgnoreCase("cloud")){
               out.println("success... ");
               response.sendRedirect("admin_page.jsp");
           }
           else{
               out.println("incorrect username or password ");
           }
        } 
        catch(Exception e){
            out.println(e);
        }
%>