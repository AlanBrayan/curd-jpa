/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controlador.AccionesUsuario;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alanb
 */
public class guardarUsuario extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            
             String nombre,app,apm,correo,telefono,pass,perfil,estatus,usuario,id_perfil;
             
             
             nombre = request.getParameter("nombre");
             app = request.getParameter("app");
             apm = request.getParameter("apm");
             correo = request.getParameter("correo");
             telefono = request.getParameter("telefono");
             pass = request.getParameter("pass");
             perfil = request.getParameter("perfil");
             estatus = request.getParameter("estatus");
             usuario = request.getParameter("usuario");
             id_perfil = request.getParameter("id_perfil");
             
             
             Usuario e = new Usuario();
             e.setNombre(nombre);
             e.setApp(app);
             e.setApm(apm);
             e.setCorreo(correo);
             e.setTelefono(telefono);
             e.setPass(pass);
             e.setPerfil(perfil);
             e.setEstatus(estatus);
             e.setUsuario(usuario);
             e.setId_perfil(id_perfil);
             
             int estatus1 = AccionesUsuario.registrarUsuario(e);
             
             
            if (estatus1 > 0) {
            response.sendRedirect("alerts/registroUsuarios.jsp");
            }else{
            response.sendRedirect("error.jsp");
            } 
            
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
