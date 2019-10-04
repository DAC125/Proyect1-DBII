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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DAC_125
 */
public class PersonaDAO {
    private String mensaje;
    
    
    public String agregarPersona(Connection con, Persona per){
        PreparedStatement pst = null;
        String sql = "insert into persona (id,carne,nombre,telefono) "
                + "values (?,?,?,?)";
        try {
            pst = con.prepareStatement(sql);
            pst.setString(1, per.getId());
            pst.setString(2, per.getCarne());
            pst.setString(3, per.getNombre());
            pst.setString(4, per.getTelefono());
            mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    public String modificarPersona(Connection con, Persona per){
        PreparedStatement pst = null;
        
        
        String sql = "update persona set carne = ?, nombre = ?, telefono = ?  "
                + "where id = ?";
      // String sql = "insert into persona (id,carne,nombre,telefono) values (?,?,?,?)";
       
        try {
            
            pst = con.prepareStatement(sql);
            pst.setString(1, per.getCarne());
            pst.setString(2, per.getNombre());
            pst.setString(3, per.getTelefono());
            pst.setString(4, per.getId());
            mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    public String eliminarPersona(Connection con, String id){
        return mensaje;
    }
    
    public void listarPersona(){
       
    }
    
    
    /*PreparedStatement ps;
    ResultSet rs;
    OracleConexion c=new OracleConexion();
    Connection con;
    
    public List listar(){
        List<Persona>lista =new ArrayList<>();
        String sql = "select * from persona;";
        
        try{
            
            con=c.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next())  {
                System.out.println("kkk");
                Persona p =new Persona();
                p.setId(rs.getString(1));
                p.setCarne(rs.getString(2));
                p.setNombre(rs.getString(3));
                p.setTelefono(rs.getString(4));
                lista.add(p);
            }      
                    
        }catch(Exception e){
            
        }
        return lista;
    }*/
}
