/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alanb
 */
public class AccionesUsuario {
    
    //Alta usuario
    
    public static int registrarUsuario(Usuario e){
    int estatus = 0;
    
    try{
         Connection con = Conexion.getConnection();
         String q = "insert into usuario (nombre,app,apm,correo,telefono,pass,perfil,estatus,usuario,id_perfil) "
                 + "values(?,?,?,?,?,?,?,?,?,?)";
                 
         PreparedStatement ps = con.prepareStatement(q);
         
         
         //usar getter y setter
         ps.setString(1, e.getNombre());
         ps.setString(2, e.getApp());
         ps.setString(3, e.getApm());
         ps.setString(4, e.getCorreo());
         ps.setString(5, e.getTelefono());
         ps.setString(6, e.getPass());
         ps.setString(7, e.getPerfil());
         ps.setString(8, e.getEstatus());
         ps.setString(9, e.getUsuario());
         ps.setString(10, e.getId_perfil());
         
         estatus = ps.executeUpdate();
         System.err.println("Registro Exitoso del empleado");
         con.close();
         
    }catch(Exception ed){
        
        System.err.println("Error al registrar empleado");
        System.err.println(ed.getMessage());
        
    }
    
    return estatus;
    }
    
    
    
    public static int actualizarUsuario(Usuario e){
    int estatus = 0;
    
    try{
         Connection con = Conexion.getConnection();
         String q = "UPDATE usuario SET nombre =?, app=?, apm=?, correo=?, telefono=?, pass=?,"
                 +"perfil=?, estatus=?, usuario=?, id_perfil=? "
                 +"WHERE id_usu = ?";
  
         PreparedStatement ps = con.prepareStatement(q);
         
         
         //usar getter y setter
         ps.setString(1, e.getNombre());
         ps.setString(2, e.getApp());
         ps.setString(3, e.getApm());
         ps.setString(4, e.getCorreo());
         ps.setString(5, e.getTelefono());
         ps.setString(6, e.getPass());
         ps.setString(7, e.getPerfil());
         ps.setString(8, e.getEstatus());
         ps.setString(9, e.getUsuario());
         ps.setString(10, e.getId_perfil());
         ps.setInt(11, e.getId_usu());
         
         estatus = ps.executeUpdate();
         System.err.println("Actualizacion Exitosa del empleado");
         con.close();
         
    }catch(Exception ed){
        
        System.err.println("Error al actualizar empleado");
        System.err.println(ed.getMessage());
        
    }
    
    return estatus;
    }
    
    
    
    
    
    
    public static int borrarUsuario(int id){
    int estatus = 0;
    
    try{
         Connection con = Conexion.getConnection();
         String q = "DELETE FROM usuario WHERE id_usu =?";
                 
         PreparedStatement ps = con.prepareStatement(q);
         
         
         //usar getter y setter
         ps.setInt(1, id);
         
         estatus = ps.executeUpdate();
         System.err.println("Eliminacion Exitosa del empleado");
         con.close();
         
    }catch(Exception ed){
        
        System.err.println("Error al borrar empleado");
        System.err.println(ed.getMessage());
        
    }
    
    return estatus;
    }
    
    
    
    
    
    public static Usuario buscarEmpleadoById(int id){
    
        Usuario e = new Usuario();
    
    try{
         Connection con = Conexion.getConnection();
         String q = "select * from usuario where id_usu = ?";
                 
         PreparedStatement ps = con.prepareStatement(q);
         
         ps.setInt(1, id);
         
         ResultSet rs = ps.executeQuery();
         
         
         if(rs.next()){
         e.setId_usu(rs.getInt(1));
         e.setNombre(rs.getString(2));
         e.setApp(rs.getString(3));
         e.setApm(rs.getString(4));
         e.setCorreo(rs.getString(5));
         e.setTelefono(rs.getString(6));
         e.setPass(rs.getString(7));
         e.setPerfil(rs.getString(8));
         e.setEstatus(rs.getString(9));
         e.setUsuario(rs.getString(10));
         e.setId_perfil(rs.getString(11));
         }
        
         System.err.println("Empleado encontrado");
         con.close();
         
    }catch(Exception ed){
        
        System.err.println("No se encontroempleado");
        System.err.println(ed.getMessage());
        
    }
    
    return e;
    }

    
    
    
        public static List<Usuario> buscarAllEmpleados(){
        
        List<Usuario> lista = new ArrayList<Usuario>();
        
            
        
    
    try{
         Connection con = Conexion.getConnection();
         String q = "select * from usuario";
                 
         PreparedStatement ps = con.prepareStatement(q);
         
    
         
         ResultSet rs = ps.executeQuery();
         
         
         while(rs.next()){
         Usuario e = new Usuario();
         e.setId_usu(rs.getInt(1));
         e.setNombre(rs.getString(2));
         e.setApp(rs.getString(3));
         e.setApm(rs.getString(4));
         e.setCorreo(rs.getString(5));
         e.setTelefono(rs.getString(6));
         e.setPass(rs.getString(7));
         e.setPerfil(rs.getString(8));
         e.setEstatus(rs.getString(9));
         e.setUsuario(rs.getString(10));
         e.setId_perfil(rs.getString(11));
         lista.add(e);
         }
        
         System.err.println("Empleado encontrado");
         con.close();
         
    }catch(Exception ed){
        
        System.err.println("No se encontroempleado");
        System.err.println(ed.getMessage());
        
    }
    
    return lista;
    }
}
