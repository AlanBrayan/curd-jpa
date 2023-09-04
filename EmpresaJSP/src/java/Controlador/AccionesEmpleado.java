/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Empleado;
import Modelo.Usuario;
import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alanb
 */
public class AccionesEmpleado {
    //Alta Empleado
    
    public static int registrarUsuario(Empleado e){
    int estatus = 0;
    
    try{
         java.sql.Connection con = Conexion.getConnection();
         String q = "insert into empleado (nombre,telefono,sexo) "
                 + "values(?,?,?)";
                 
         PreparedStatement ps = con.prepareStatement(q);
         
         
         //usar getter y setter
          ps.setString(1, e.getNombre());
          ps.setString(2, e.getTelefono());
          ps.setString(3, e.getSexo());
         
    
         
         estatus = ps.executeUpdate();
         System.err.println("Registro Exitoso del empleado");
         con.close();
         
    }catch(Exception ed){
        
        System.err.println("Error al registrar empleado");
        System.err.println(ed.getMessage());
        
    }
    
    return estatus;
    }
        
    
    
    
     public static List<Empleado> buscarAllEmpleados(){
        
        List<Empleado> lista = new ArrayList<Empleado>();

        try{
         java.sql.Connection con = Conexion.getConnection();
         String q = "select * from empleado";
                 
         PreparedStatement ps = con.prepareStatement(q);
         
    
         
         ResultSet rs = ps.executeQuery();
         
         
         while(rs.next()){
         Empleado e = new Empleado();
         e.setId_emp(rs.getInt(1));
         e.setNombre(rs.getString(2));
         e.setTelefono(rs.getString(3));
         e.setSexo(rs.getString(4));

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
     
     
     public static int actualizarEmpleado(Empleado e){
    int estatus = 0;
    
    try{
         java.sql.Connection con = Conexion.getConnection();
         String q = "UPDATE empleado SET nombre =?, telefono=?,"
                 +"sexo=?"
                 +"WHERE id_emp = ?";
  
         PreparedStatement ps = con.prepareStatement(q);
         
         
         //usar getter y setter
         ps.setString(1, e.getNombre());
         ps.setString(2, e.getTelefono());
         ps.setString(3, e.getSexo());
         ps.setInt(4, e.getId_emp());
         
         estatus = ps.executeUpdate();
         System.err.println("Actualizacion Exitosa del empleado");
         con.close();
         
    }catch(Exception ed){
        
        System.err.println("Error al actualizar empleado");
        System.err.println(ed.getMessage());
        
    }
    
    return estatus;
    }
       
     
     public static Empleado buscarEmpleadoById(int id){
    
       Empleado e = new Empleado();
    
    try{
         java.sql.Connection con = Conexion.getConnection();
         String q = "select * from empleado where id_emp = ?";
                 
         PreparedStatement ps = con.prepareStatement(q);
         
         ps.setInt(1, id);
         
         ResultSet rs = ps.executeQuery();
         
         
         if(rs.next()){
         e.setId_emp(rs.getInt(1));
         e.setNombre(rs.getString(2));
         e.setTelefono(rs.getString(3));
         e.setSexo(rs.getString(4));

         }
        
         System.err.println("Empleado encontrado");
         con.close();
         
    }catch(Exception ed){
        
        System.err.println("No se encontroempleado");
        System.err.println(ed.getMessage());
        
    }
    
    return e;
    }
     
     
     
     public static int borrarEmpleado(int id){
    int estatus = 0;
    
    try{
         java.sql.Connection con = Conexion.getConnection();
         String q = "DELETE FROM empleado WHERE id_emp =?";
                 
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
}


