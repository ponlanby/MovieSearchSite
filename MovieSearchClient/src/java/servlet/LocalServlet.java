/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;

import client.MovieClient;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;

/**
 *
 * @author xiaopangzi
 */
@WebServlet(name = "LocalServlet", urlPatterns = {"/LocalServlet"})
public class LocalServlet extends HttpServlet {

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
        MovieClient movieClient = new MovieClient();
        String movieName = request.getParameter("search");
        JSONObject jo = new JSONObject(movieClient.find_JSON(String.class, movieName));
        String mname = jo.getString("name");
        /*
        String mdirector = jo.getString("director");
        String mwriters = jo.getString("writers");
        String mstars = jo.getString("stars");
        String mtype = jo.getString("type");
        String mlanguagee = jo.getString("language");
        String mreleaseDate = jo.getString("releaseDate");
        String mrunningTime = jo.getString("runningTime");
        */
        
        request.setAttribute("name",mname);        
        request.getRequestDispatcher("/local.jsp").forward(request, response);
        /*
        request.setAttribute("director",mdirector);        
        request.getRequestDispatcher("/local.jsp").forward(request, response);
        request.setAttribute("writers",mwriters);        
        request.getRequestDispatcher("/local.jsp").forward(request, response);
        request.setAttribute("stars",mstars);        
        request.getRequestDispatcher("/local.jsp").forward(request, response);
        request.setAttribute("type",mtype);        
        request.getRequestDispatcher("/local.jsp").forward(request, response);
        request.setAttribute("language",mlanguagee);        
        request.getRequestDispatcher("/local.jsp").forward(request, response);
        request.setAttribute("releaseDate",mreleaseDate);        
        request.getRequestDispatcher("/local.jsp").forward(request, response);
        request.setAttribute("runningTime",mrunningTime);        
        request.getRequestDispatcher("/local.jsp").forward(request, response);
        */
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
