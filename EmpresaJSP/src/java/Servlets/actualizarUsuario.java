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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alanb
 */
@WebServlet(name = "actualizarUsuario", urlPatterns = {"/actualizarUsuario"})
public class actualizarUsuario extends HttpServlet {

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
            
            String nombre,app,apm,correo,telefono,pass,perfil,estatus,usuario,id_perfil;
             
            int id = Integer.parseInt(request.getParameter("id2")); 
            
             nombre = request.getParameter("nombre2");
             app = request.getParameter("app2");
             apm = request.getParameter("apm2");
             correo = request.getParameter("correo2");
             telefono = request.getParameter("telefono2");
             pass = request.getParameter("pass2");
             perfil = request.getParameter("perfil2");
             estatus = request.getParameter("estatus2");
             usuario = request.getParameter("usuario2");
             id_perfil = request.getParameter("id_perfil2");
            
     
             
             Usuario e = new Usuario();
             
             e.setId_usu(id);
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
             
             
             int estatus2 = AccionesUsuario.actualizarUsuario(e);
             
             
               if (estatus2 > 0) {
            response.sendRedirect("alerts/actualizar.jsp");
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
