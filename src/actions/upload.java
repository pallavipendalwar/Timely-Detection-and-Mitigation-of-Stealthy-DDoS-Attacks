/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pack.Dbconnection;

/**
 *
 * @author IBN33
 */
public class upload extends HttpServlet {
final String path="D:/";
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           MultipartRequest m=new MultipartRequest(request,path);
           File file=m.getFile("file");
           FileInputStream fis=new FileInputStream(file);
           
           HttpSession user=request.getSession();
           String uname=user.getAttribute("username").toString(); 
           
           SimpleDateFormat sdf=new SimpleDateFormat("dd:mm:yyyy HH:MM:SS");
           String time=sdf.format(new Date());
           
           String[] k=file.getName().split("\\.");
           System.out.println("keyword"+k[0]);
           
           Connection con=Dbconnection.getConn();
           PreparedStatement ps=con.prepareStatement("insert into files (filename, filedata, time_, owner_, size_, keyword_)values(?,?,?,?,?,?)");
          ps.setString(1, file.getName());
          ps.setAsciiStream(2, fis,(int)file.length());
          ps.setString(3, time);
          ps.setString(4, uname);
          ps.setString(5, file.length()+"");
          ps.setString(6, k[0]);
          ps.execute();
          response.sendRedirect("upload.jsp?yes='status'");
          


           
        } 
         catch(Exception e){
            out.println(e);
        }
        finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
