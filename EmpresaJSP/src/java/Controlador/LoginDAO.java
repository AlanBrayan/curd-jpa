/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import BD.conexion;
import Modelo.LoginModel;
import java.sql.ResultSet;

/**
 *
 * @author Alanb
 */
public class LoginDAO {
    int rspta=0;
    String sql="";
    ResultSet rs=null;
    conexion cn=new conexion();
    
    public int validarLogin(LoginModel tm) throws Exception{ 
        
        
    sql ="SELECT id_perfil AS cantidad FROM usuario WHERE usuario='"+tm.getUsuario()+"' AND pass='"+tm.getPass()+"';";
    rs=cn.ejecutarConsulta(sql);
    while(rs.next()){
    rspta=rs.getInt("cantidad");
    }
        return rspta;
    }
    
    
    
}


