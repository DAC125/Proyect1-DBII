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
public class Built_Computers_StyleDAO {
    private String mensaje;
    
    public String agregarBuilt_Computers_Style (Connection con, Built_Computers_Style computer){
        PreparedStatement pst = null;
        String sql = "insert into built_computers_style (Name,Brand,Price,Stock,type,parts)"+
" values(?,?,?,?,?,?);";
        try {
            pst = con.prepareStatement(sql);
            
            pst.setString(1, computer.getName());
            pst.setString(2, computer.getBrand());
            pst.setInt(3, computer.getPrice() );
            pst.setInt(4, computer.getStock());
            pst.setString(5, computer.getType());
            pst.setString(6, computer.getParts());
            mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    
    
    public String modificarBuilt_Computers_Style(Connection con, Built_Computers_Style computer){
         PreparedStatement pst = null;
         String sql = "update built_computers_style set Name = ?, Brand = ?, Price = ?, Stock = ?, type = ?, parts = ? where computer_id = ?";
         try {
            pst = con.prepareStatement(sql);
            pst.setString(1, computer.getName());
            pst.setString(2, computer.getBrand());
            pst.setInt(3, computer.getPrice() );
            pst.setInt(4, computer.getStock());
            pst.setString(5, computer.getType());
            pst.setString(6, computer.getParts());
            pst.setInt(7, computer.getId());
            
           mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
         return mensaje;
    }
    
    public String eliminarBuilt_Computers_Style(Connection con, int id){
        PreparedStatement pst = null;
        
         String sql = "delete from built_computers_style where computer_id = ?";
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
    
    public List<Built_Computers_Style> listarBuilt_Computers_Style(Connection con){
        Statement st;
        ResultSet rs;
        List<Built_Computers_Style>lista =new ArrayList<>();
        String sql = "SELECT * FROM built_computers_style" ;
        
        String [] fila = new String[7];
        
        try{
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next())  {
                for (int i=0;i<7;i++){
                    fila[i]=rs.getString(i+1);
                }
                Built_Computers_Style computer =new Built_Computers_Style();
                
                computer.setId(Integer.parseInt(fila[0]));
                computer.setName(fila[1]);
                computer.setBrand(fila[2]);
                computer.setPrice(Integer.parseInt(fila[3]));
                computer.setStock(Integer.parseInt(fila[4]));
                computer.setType(fila[5]);
                computer.setParts(fila[6]);
                lista.add(computer);
              
            }      
            st.close();       
        }catch(Exception e){
            System.out.println("No se pudo enlistar los datos");
        }
        return lista;
       
    }
}
