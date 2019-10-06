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
public class Keyboards_StyleDAO {
    private String mensaje;
    
    public String agregarKeyboards_Style (Connection con, Keyboards_Style keyboard){
        PreparedStatement pst = null;
        String sql = "insert into keyboards_style (Name,Brand,Price,Stock,RGB,Wired_Wireless,Color,type)"+
" values(?,?,?,?,?,?,?,?);";
        try {
            pst = con.prepareStatement(sql);
            pst.setString(1, keyboard.getName());
            pst.setString(2, keyboard.getBrand());
            pst.setInt(3, keyboard.getPrice() );
            pst.setInt(4, keyboard.getStock());
            pst.setString(5, keyboard.getRgb());
            pst.setString(6, keyboard.getWired_wirless());
            pst.setString(7, keyboard.getColor());
            pst.setString(8, keyboard.getType());
            mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    public String modificarKeyboards_Style(Connection con, Keyboards_Style keyboard){
         PreparedStatement pst = null;
         String sql = "update keyboards_style set Name = ?, Brand = ?, Price = ?, Stock = ?, RGB = ?, Wired_Wireless = ?, Color = ?, type = ? where mouse_id = ?";
         try {
            pst = con.prepareStatement(sql);
            pst.setString(1, keyboard.getName());
            pst.setString(2, keyboard.getBrand());
            pst.setInt(3, keyboard.getPrice() );
            pst.setInt(4, keyboard.getStock());
            pst.setString(5, keyboard.getRgb());
            pst.setString(6, keyboard.getWired_wirless());
            pst.setString(7, keyboard.getColor());
            pst.setString(8, keyboard.getType());
            pst.setInt(9, keyboard.getId());
           mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
         return mensaje;
    }
    
    public String eliminarKeyboards_Style(Connection con, int id){
        PreparedStatement pst = null;
        
         String sql = "delete from keyboards_style where id = ?";
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
    
    public List<Keyboards_Style> listarKeyboards_Style(Connection con){
        Statement st;
        ResultSet rs;
        List<Keyboards_Style>lista =new ArrayList<>();
        String sql = "SELECT * FROM keyboards_style" ;
        
        String [] fila = new String[9];
        
        try{
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next())  {
                for (int i=0;i<9;i++){
                    fila[i]=rs.getString(i+1);
                }
                Keyboards_Style keyboard =new Keyboards_Style();
                
                keyboard.setId(Integer.parseInt(fila[0]));
                keyboard.setName(fila[1]);
                keyboard.setBrand(fila[2]);
                keyboard.setPrice(Integer.parseInt(fila[3]));
                keyboard.setStock(Integer.parseInt(fila[4]));
                keyboard.setRgb(fila[5]);
                keyboard.setWired_wirless(fila[6]);
                keyboard.setColor(fila[7]);
                keyboard.setType(fila[8]);
                lista.add(keyboard);
              
            }      
            st.close();       
        }catch(Exception e){
            System.out.println("No se pudo enlistar los datos");
        }
        return lista;
       
    }
}
