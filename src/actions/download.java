/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class download extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
            
            String id = request.getQueryString();

            Connection con = Dbconnection.getConn();
            PreparedStatement ps = con.prepareStatement("select * from files where id=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                String fname = rs.getString("filename");

                InputStream is = rs.getAsciiStream("filedata");
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                StringBuilder sb = new StringBuilder();
                String temp = null;
                while ((temp = br.readLine()) != null) {
                    sb.append(temp);
                    sb.append("\n");
                }
                HttpSession user = request.getSession();
                String uname = user.getAttribute("username").toString();
                String type = null;
                if(uname!="Stealthy_Dos"){
                    type = uname;
                }else{
                    type = "Stealthy_Dos";
                }
                System.out.println("type :"+type);
                ps = con.prepareStatement("insert into downloads(user, filename, time_)values('" + type + "','" + fname + "',now())");
                ps.execute();
                response.setHeader("Content-Disposition", "attachment;filename=\"" + fname + "\"");
                out.write(sb.toString());
                
            } else {
                out.println("<p style='font-size:30px;'>Oops! file not found </p>");
            }

        } catch (Exception e) {
            out.println(e);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
