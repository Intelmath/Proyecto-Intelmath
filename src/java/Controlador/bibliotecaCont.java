/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.bibliotecaDAO;
import ModeloVO.bibliotecaVO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author USER
 */
@WebServlet(name = "bibliotecaCont", urlPatterns = {"/bibliotecaCont"})
public class bibliotecaCont extends HttpServlet {

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
        String id_bilioteca = request.getParameter("txtId");
        String titulo = request.getParameter("txtTitulo");
        String descripcion = request.getParameter("txtDescripcion");
        String tipo = request.getParameter("txtTipo");
        String id_usuario = request.getParameter("txtUsuario");
        String id_tipo = request.getParameter("txtId_Tipo");
        String fichero = request.getParameter("fichero");
        byte[] archivopdf = fichero.getBytes();
        

        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        //Paso 2
        bibliotecaVO bibVO = new bibliotecaVO(id_bilioteca, titulo, descripcion, tipo, id_usuario, id_tipo, archivopdf);

        // Paso 3
        bibliotecaDAO bibDAO = new bibliotecaDAO(bibVO);
        
        switch (opcion) {

            case 1://Agregar Registro

                if (bibDAO.libro(titulo)) {
                    request.setAttribute("mensajeError", "¡Este libro ya existe!");
                    
                }
                else if (bibDAO.agregarRegistro()) {

                    request.setAttribute("mensajeExitoso", "El libro a sido registrado correctamente");
                } else {

                    request.setAttribute("mensajeError", "El libro no a sido registrado correctamente");
                }

                request.getRequestDispatcher("regBiblioteca.jsp").forward(request, response);
                break;

            case 2://Actualizar registro

                if (bibDAO.actualizarRegistro()) {

                    request.setAttribute("mensajeExitoso", "El libro a sido actualizado correctamente");

                } else {
                    request.setAttribute("mensajeError", "El libro no a sido actualizado correctamente");
                }

                request.getRequestDispatcher("actBiblioteca.jsp").forward(request, response);
                break;

            case 3://Eliminar registro

                if (bibDAO.eliminarRegistro()) {

                    request.setAttribute("mensajeExitoso", "El libro a sido eliminado correctamente");

                } else {
                    request.setAttribute("mensajeError", "El libro no a sido eliminado correctamente");
                }

                request.getRequestDispatcher("eliBiblioteca.jsp").forward(request, response);
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
