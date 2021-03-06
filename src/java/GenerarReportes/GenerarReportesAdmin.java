/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GenerarReportes;

import ConexionBD.BDConexion;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;

/**
 *
 * @author EDDY
 */
public class GenerarReportesAdmin extends HttpServlet {

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
        
        
        Connection conexion = BDConexion.Singleton().ConectarBD();
        
        String Tipo =(String) request.getParameter("Reporte");
        String salida;
        
        System.err.println("tipo"+Tipo);
        try{
            
        
        if(Tipo.equals("ReporteUsuarios")){
      
            try {
                String jrxmlFileName = "/Reportes/ReporteUsuarios.jasper";
                File archivoReporte = new File(request.getRealPath(jrxmlFileName));

                HashMap hm = new HashMap();
                //Parametros para obtener unicamente los ganados del dueño de la sesion iniciada

                ServletOutputStream OutputStream = response.getOutputStream();

                byte[] bytes = null;

                try {
                    bytes = JasperRunManager.runReportToPdf(archivoReporte.getPath(), hm, conexion);

                    response.setContentType("application/pdf");
                    response.setContentLength(bytes.length);
                    OutputStream.write(bytes, 0, bytes.length);
                    OutputStream.flush();
                    OutputStream.close();
                    
                } catch (JRException e) {
                    StringWriter stringWriter = new StringWriter();
                    PrintWriter printWriter = new PrintWriter(stringWriter);
                    e.printStackTrace(printWriter);
                    response.setContentType("text/plain");
                    response.getOutputStream().print(stringWriter.toString());
                }
            } catch (Exception e) {
                salida = "Error generando Reporte Jasper, el error del Sistema es " + e.getMessage();
                System.out.println(salida);
            }
            }
             
        if(Tipo.equals("ReporteVentas")){
      
            try {
                String jrxmlFileName = "/Reportes/ReporteVentas.jasper";
                File archivoReporte = new File(request.getRealPath(jrxmlFileName));

                HashMap hm = new HashMap();
                hm.put("IdDuenio",Integer.parseInt(request.getParameter("IdDuenio")));//Parametros para obtener unicamente los ganados del dueño de la sesion iniciada

                ServletOutputStream OutputStream = response.getOutputStream();

                byte[] bytes = null;

                try {
                    bytes = JasperRunManager.runReportToPdf(archivoReporte.getPath(), hm, conexion);

                    response.setContentType("application/pdf");
                    response.setContentLength(bytes.length);
                    OutputStream.write(bytes, 0, bytes.length);
                    OutputStream.flush();
                    OutputStream.close();
                } catch (JRException e) {
                    StringWriter stringWriter = new StringWriter();
                    PrintWriter printWriter = new PrintWriter(stringWriter);
                    e.printStackTrace(printWriter);
                    response.setContentType("text/plain");
                    response.getOutputStream().print(stringWriter.toString());
                }
            } 
            catch (Exception e) {
                salida = "Error generando Reporte Jasper, el error del Sistema es " + e.getMessage();
                System.out.println(salida);
                response.sendRedirect("Perfil.jsp");
            }
            }
        }
        catch(Exception e){
            System.err.println("Error al generar reportes"+ e.toString());

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
