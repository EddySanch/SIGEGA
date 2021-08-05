/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsGanado;

import Servicios.Ganado;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EDDY
 */
public class ConsultarGanado extends HttpServlet {

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
        
        
        
        try{
            
            Ganado Consultar = new Ganado();
            
            Consultar.setDuenio(Integer.parseInt(request.getParameter("IdDuenio")));
            ArrayList<Ganado> DatosGanado = Consultar.ConsultarGanados();
            
            
            if(DatosGanado!=null){
                request.setAttribute("DatosGanado",DatosGanado);
                request.getRequestDispatcher("Perfil.jsp?Acciones=Consultar").forward(request, response);
                
            }
            else{
                request.setAttribute("Resultado", "Fallo en la consulta de registros");
                request.getRequestDispatcher("Inicia_Registrate.jsp").forward(request, response);
            }
        }
        catch(SQLException SQL){
            System.err.println("Error SQL (ServletCosultarGanado): "+SQL.toString());
        }
        catch(Exception ex){
            System.err.println("Error General (ServletCosultarGanado): "+ex.toString());
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