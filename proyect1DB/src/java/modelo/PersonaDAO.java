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
        
        //String sql = "update persona set carne= '222', nombre = 'tytyrty', telefono = '4545' where id = '117040878'";
       String sql = "update persona set carne = ?, nombre = ?, telefono = ?  where id = ?";
       //String sql = "update persona set carne = ? , nombre = ? where id = ?";
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
        PreparedStatement pst = null;
        
         String sql = "delete from persona where id = ?";
        try {
            pst = con.prepareStatement(sql);
            pst.setString(1, id);
            mensaje = "Eliminado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo eliminar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    public List<Persona> listarPersona(Connection con){
        Statement st;
        ResultSet rs;
        List<Persona>lista =new ArrayList<>();
        String sql = "SELECT * FROM persona" ;
        System.out.println(sql);
        String [] fila = new String[4];
        
        try{
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next())  {
                for (int i=0;i<4;i++){
                    fila[i]=rs.getString(i+1);
                }
                Persona p =new Persona();
                p.setId(fila[0]);
                p.setCarne(fila[1]);
                p.setNombre(fila[2]);
                p.setTelefono(fila[3]);
                System.out.println(rs);
                lista.add(p);
            }      
            st.close();       
        }catch(Exception e){
            System.out.println("No se pudo enlistar los datos");
        }
        return lista;
       
    }
    
    
    /*PreparedStatement st;
    ResultSet rs;
    OracleConexion c=new OracleConexion();
    Connection con;
    
    public List listar(){
        List<Persona>lista =new ArrayList<>();
        String sql = "select * from persona;";
        
        try{
            
            con=c.conectar();
            st=con.prepareStatement(sql);
            rs=st.executeQuery();
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
