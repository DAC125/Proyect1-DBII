/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.OracleConexion;
import modelo.*;


/**
 *
 * @author DAC_125
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private Components_StyleDAO dao_com = new Components_StyleDAO();
    private Keyboards_StyleDAO dao_key = new Keyboards_StyleDAO();
    private Mouses_StyleDAO dao_mou = new Mouses_StyleDAO();
    private Built_Computers_StyleDAO dao_comp = new Built_Computers_StyleDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         Connection con = OracleConexion.conectar();
         System.out.println("jgfdjyrtfdk");
         String accion=request.getParameter("accion");
         switch (accion){
            case "componentesadmin1":
                List<Components_Style> datosad = dao_com.listarComponents_Style(con);
                request.setAttribute("datos", datosad);
                request.getRequestDispatcher("principaladmin.jsp").forward(request, response);
            break;
            case "componentesadmin":
                List<Components_Style> datosad1 = dao_com.listarComponents_Style(con);
                request.setAttribute("datos", datosad1);
                request.getRequestDispatcher("principaladmin.jsp").forward(request, response);
            break;
            case "tecladosadmin":
                List<Keyboards_Style> datosad2 = dao_key.listarKeyboards_Style(con);
                request.setAttribute("datos", datosad2);
                request.getRequestDispatcher("principaladmin.jsp").forward(request, response);
            break;
            case "mousesadmin":
                List<Mouses_Style> datosad3 = dao_mou.listarMouses_Style(con);
                request.setAttribute("datos", datosad3);
                request.getRequestDispatcher("principaladmin.jsp").forward(request, response);
            break;
            case "computadorasadmin":
                List<Built_Computers_Style> datosad4 = dao_comp.listarBuilt_Computers_Style(con);
                request.setAttribute("datas", datosad4);
                request.getRequestDispatcher("principaladmin.jsp").forward(request, response);
            break;
            case "componentes1":
                
                List<Components_Style> datos = dao_com.listarComponents_Style(con);
                request.setAttribute("datos", datos);
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            break;
            case "componentes":
                List<Components_Style> datos1 = dao_com.listarComponents_Style(con);
                request.setAttribute("datos", datos1);
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            break;
            case "teclados":
                List<Keyboards_Style> datos2 = dao_key.listarKeyboards_Style(con);
                request.setAttribute("datos", datos2);
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            break;
            case "mouses":
                List<Mouses_Style> datos3 = dao_mou.listarMouses_Style(con);
                request.setAttribute("datos", datos3);
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            break;
            case "computadoras":
                List<Built_Computers_Style> datos4 = dao_comp.listarBuilt_Computers_Style(con);
                request.setAttribute("datas", datos4);
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            break;
            
         
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
