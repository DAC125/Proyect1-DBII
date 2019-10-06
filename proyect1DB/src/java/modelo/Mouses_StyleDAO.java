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
public class Mouses_StyleDAO {
    private String mensaje;
    
    public String agregarMouses_Style (Connection con, Mouses_Style mouse){
        PreparedStatement pst = null;
        String sql = "insert into mouses_style (Name,Brand,Price,Stock,RGB,Wired_Wireless,Color,Extra_Buttons)"+
" values(?,?,?,?,?,?,?,?);";
        try {
            pst = con.prepareStatement(sql);
            pst.setInt(1, mouse.getId());
            pst.setString(2, mouse.getName());
            pst.setString(3, mouse.getBrand());
            pst.setInt(4, mouse.getPrice() );
            pst.setInt(5, mouse.getStock());
            pst.setString(6, mouse.getRgb());
            pst.setString(7, mouse.getWired_wirless());
            pst.setString(8, mouse.getColor());
            pst.setInt(9, mouse.getExtra_btn());
            mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
        return mensaje;
    }
    
    public String modificarMouses_Style(Connection con, Mouses_Style mouse){
         PreparedStatement pst = null;
         String sql = "update mouses_style set Name = ?, Brand = ?, Price = ?, Stock = ?, RGB = ?, Wired_Wireless = ?, Color = ?, Extra_Buttons = ? where mouse_id = ?";
         try {
            pst = con.prepareStatement(sql);
            pst.setString(1, mouse.getName());
            pst.setString(2, mouse.getBrand());
            pst.setInt(3, mouse.getPrice() );
            pst.setInt(4, mouse.getStock());
            pst.setString(5, mouse.getRgb());
            pst.setString(6, mouse.getWired_wirless());
            pst.setString(7, mouse.getColor());
            pst.setInt(8, mouse.getExtra_btn());
            pst.setInt(9, mouse.getId());
           mensaje = "Guardado Correctamente";
            pst.execute();
            pst.close();
        } catch (SQLException e) {
            mensaje = "No se pudo guardar correctamente" + e.getMessage();
        }
         return mensaje;
    }
    
    public String eliminarMouses_Style(Connection con, int id){
        PreparedStatement pst = null;
        
         String sql = "delete from mouses_style where id = ?";
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
    
    public List<Mouses_Style> listarMouses_Style(Connection con){
        Statement st;
        ResultSet rs;
        List<Mouses_Style>lista =new ArrayList<>();
        String sql = "SELECT * FROM mouses_style" ;
        
        String [] fila = new String[9];
        
        try{
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next())  {
                for (int i=0;i<9;i++){
                    fila[i]=rs.getString(i+1);
                }
                Mouses_Style mouse =new Mouses_Style();
                
                mouse.setId(Integer.parseInt(fila[0]));
                mouse.setName(fila[1]);
                mouse.setBrand(fila[2]);
                mouse.setPrice(Integer.parseInt(fila[3]));
                mouse.setStock(Integer.parseInt(fila[4]));
                mouse.setRgb(fila[5]);
                mouse.setWired_wirless(fila[6]);
                mouse.setColor(fila[7]);
                mouse.setExtra_btn(Integer.parseInt(fila[8]));
                lista.add(mouse);
            }      
            st.close();       
        }catch(Exception e){
            System.out.println("No se pudo enlistar los datos");
        }
        return lista;
       
    }
}
