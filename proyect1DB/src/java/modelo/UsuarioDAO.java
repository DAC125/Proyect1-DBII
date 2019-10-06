/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DAC_125
 */
public class UsuarioDAO {
    private String mensaje;
    
    public String agregarUsuario (Connection con, Usuario user){
        PreparedStatement pst = null;
        String sql = "insert into usuario (cedula, name, last_name1, last_name12, email, password) "
                + "values (?,?,?,?,?,?)";
        try {
            pst = con.prepareStatement(sql);
            pst.setInt(1, user.getCedula());
            pst.setString(2, user.getName());
            pst.setString(3, user.getLast_name1());
            pst.setString(4, user.getLast_name2());
            pst.setString(5, user.getEmail());
            pst.setString(6, user.getPassword());
            mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    public String modificarUsuario(Connection con, Usuario user){
         PreparedStatement pst = null;
         String sql = "update usuario set name = ?, last_name1 = ?, last_name12 = ?, email = ?, password = ? where cedula = ?";
         try {
            pst = con.prepareStatement(sql);
            pst.setString(1, user.getName());
            pst.setString(2, user.getLast_name1());
            pst.setString(3, user.getLast_name2());
            pst.setString(4, user.getEmail());
            pst.setString(5, user.getPassword());
            pst.setInt(6, user.getCedula());
           mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
         return mensaje;
    }
    
    public String eliminarUsuario(Connection con, int cedula){
        PreparedStatement pst = null;
        
         String sql = "delete from usuario where id = ?";
        try {
            pst = con.prepareStatement(sql);
            pst.setInt(1, cedula);
            mensaje = "Eliminado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo eliminar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    public List<Usuario> listarUsuario(Connection con){
        Statement st;
        ResultSet rs;
        List<Usuario>lista =new ArrayList<>();
        String sql = "SELECT * FROM usuario" ;
        
        String [] fila = new String[4];
        
        try{
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next())  {
                for (int i=0;i<4;i++){
                    fila[i]=rs.getString(i+1);
                }
                Usuario us =new Usuario();
                
                us.setCedula(Integer.parseInt(fila[0]));
                us.setName(fila[1]);
                us.setLast_name1(fila[2]);
                us.setLast_name2(fila[3]);
                us.setEmail(fila[4]);
                us.setPassword(fila[5]);
                lista.add(us);
            }      
            st.close();       
        }catch(Exception e){
            System.out.println("No se pudo enlistar los datos");
        }
        return lista;
       
    }
}
