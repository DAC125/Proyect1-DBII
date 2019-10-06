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
public class Components_StyleDAO {
    private String mensaje;
    
    public String agregarComponents_Style (Connection con, Components_Style components){
        PreparedStatement pst = null;
        String sql = "insert into components_style (Name,Brand,Price,Stock,RGB,Color)"+
" values(?,?,?,?,?,?);";
        try {
            pst = con.prepareStatement(sql);
            
            pst.setString(1, components.getName());
            pst.setString(2, components.getBrand());
            pst.setInt(3, components.getPrice() );
            pst.setInt(4, components.getStock());
            pst.setString(5, components.getRgb());
            pst.setString(6, components.getColor());
            mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    public String modificarComponents_Style(Connection con, Components_Style components){
         PreparedStatement pst = null;
         String sql = "update components_style set Name = ?, Brand = ?, Price = ?, Stock = ?, RGB = ?, Color = ? where component_id = ?";
         try {
            pst = con.prepareStatement(sql);
            pst.setString(1, components.getName());
            pst.setString(2, components.getBrand());
            pst.setInt(3, components.getPrice() );
            pst.setInt(4, components.getStock());
            pst.setString(5, components.getRgb());
            pst.setString(6, components.getColor());
            pst.setInt(7, components.getId());
           mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
         return mensaje;
    }
    
    public String eliminarComponents_Style(Connection con, int id){
        PreparedStatement pst = null;
        
         String sql = "delete from components_style where id = ?";
        try {
            pst = con.prepareStatement(sql);
            pst.setInt(1, id);
            mensaje = "Eliminado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo eliminar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    public List<Components_Style> listarComponents_Style(Connection con){
        Statement st;
        ResultSet rs;
        List<Components_Style>lista =new ArrayList<>();
        String sql = "SELECT * FROM components_style" ;
        
        String [] fila = new String[7];
        
        try{
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next())  {
                for (int i=0;i<7;i++){
                    fila[i]=rs.getString(i+1);
                }
                Components_Style components =new Components_Style();
                
                components.setId(Integer.parseInt(fila[0]));
                components.setName(fila[1]);
                components.setBrand(fila[2]);
                components.setPrice(Integer.parseInt(fila[3]));
                components.setStock(Integer.parseInt(fila[4]));
                components.setRgb(fila[5]);
                components.setColor(fila[6]);
                lista.add(components);
              
            }      
            st.close();       
        }catch(Exception e){
            System.out.println("No se pudo enlistar los datos");
        }
        return lista;
       
    }
}
