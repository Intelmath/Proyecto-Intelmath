/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.IncioSesionDAO;
import ModeloDAO.TriviaDAO;
import ModeloVO.IncioSesionVO;
import ModeloVO.TriviaVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author agxel
 */
@WebServlet(name = "InicioSesionControlador", urlPatterns = {"/InicioSesion"})
public class InicioSesionControlador extends HttpServlet {

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
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String IdUsuario = request.getParameter("usuID");
        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("contra");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String rol = "Aprendiz";

        IncioSesionVO isVO = new IncioSesionVO(IdUsuario, usuario, contraseña, nombre, apellido, correo, telefono,rol);
        IncioSesionDAO isDAO = new IncioSesionDAO(isVO);

        switch (opcion) {
            case 1:
                if (isDAO.usuario(usuario)) {
                    request.setAttribute("mensajeError", "¡El usuario ya existe!");

                } else if (isDAO.agregarRegistro()) {

                    request.setAttribute("mensajeExitoso", "¡El usuario se registro correctamente!");
                } else {
                    request.setAttribute("mensajeError", "¡El usuario no pudo ser registrado!");
                }
                request.getRequestDispatcher("RegistrarUsuario.jsp").forward(request, response);
                break;
            case 2:
                if (isDAO.ValidarIngreso(usuario, contraseña)) {
                    HttpSession miSession = request.getSession(true);
                    IncioSesionVO sesion = IncioSesionDAO.sesion(usuario);
                    miSession.setAttribute("usuario", sesion);
                    request.getRequestDispatcher("Menu.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "¡Usuario o Contraseña incorrecto!");
                    request.getRequestDispatcher("InicioSesion1.jsp").forward(request, response);
                }
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