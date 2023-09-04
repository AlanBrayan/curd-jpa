/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Alanb
 */
public class Conexion {
    
    
    public static Connection getConnection(){
    String url,userName, password;
    
    url = "jdbc:mysql://localhost/empresa1";
    userName = "root";
    password = "";
    
    Connection con = null;
    
    try {
    Class.forName("com.mysql.jdbc.Driver");
    con = (Connection) DriverManager.getConnection(url,userName,password);
    
    
        System.out.println("Conexion exitosa");
    
    
    }catch(Exception e){
    
    System.out.println("Conexion No exitosa");
    System.out.println(e.getMessage());
    
    }
    return con;
    
    }
    
    
}
