<%
  try {
             String uname=request.getParameter("username");
             String pass=request.getParameter("password");
           
           if(uname.equalsIgnoreCase("attack")&&pass.equalsIgnoreCase("attack")){
               out.println("success... ");
               response.sendRedirect("attack.jsp");
           }
           else{
               out.println("incorrect username or password ");
           }
        } 
        catch(Exception e){
            out.println(e);
        }
%>