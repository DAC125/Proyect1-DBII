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
import modelo.Persona;

import modelo.PersonaDAO;

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
    private PersonaDAO dao =new PersonaDAO();
    private Persona p =new Persona();
    private String mensaje ="";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

        String accion = request.getParameter("accion");
        Connection con = OracleConexion.conectar();
       
       
        switch (accion){
            case "Listar":
                
                /*p.setId("00000000");
                p.setCarne("11111111");
                p.setNombre("keneth");
                p.setTelefono("88888888");*/
              
                p.setId("11");
                p.setCarne("22");
                p.setNombre("loerem");
                p.setTelefono("1212;");
                      
                
                try {
                    mensaje = dao.agregarPersona(con, p);
                } catch (Exception e) {
                    mensaje = mensaje + " " +e.getMessage();
                }finally{
                    try {
                        if (con != null){
                            con.close();
                        }
                    } catch (Exception e) {
                        mensaje = mensaje + " " +e.getMessage();
                    }
                }
                break;
           case "Modificar":
               // System.out.println("holaaaaa");
                p.setId("11");
                p.setCarne("20199999");
                p.setNombre("estudiante");
                p.setTelefono("888888888");
               try {
                    mensaje = dao.modificarPersona(con, p);
                    System.out.println(mensaje);
                } catch (Exception e) {
                    mensaje = mensaje + " " +e.getMessage();
                }finally{
                    try {
                        if (con != null){
                            con.close();
                        }
                    } catch (Exception e) {
                        mensaje = mensaje + " " +e.getMessage();
                    }
                }
            break;
        }
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
