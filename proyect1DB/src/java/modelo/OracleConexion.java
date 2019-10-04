/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author DAC_125
 */
public class OracleConexion {
    private static Connection con = null;
    private static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    private static String user = "bases";
    private static String pass = "bases";
    
    
    public static Connection conectar(){
        
        try{
            Class.forName("oracle.jdbc.OracleDriver");
            con=DriverManager.getConnection(url, user, pass);
            con.setAutoCommit(false);
            if(con != null){
                System.out.println("Conexion Exitosa");
            }else{
                System.out.println("Conexion es erronea");
            }
        }catch (ClassNotFoundException | SQLException e){
           System.out.println("Conexion Erronea" + e.getMessage());
        }
        return con;
    }
    
    public void desconexion(){
        try {
            con.close();
        } catch (Exception e) {
            System.out.println("Error al desconectar "+ e.getMessage());
        }
    }
    
    
    
}
