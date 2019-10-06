/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author DAC_125
 */
public class Usuario {
    int cedula;
    String name;
    String last_name1;
    String last_name2;
    String email;
    String password;
    
    public Usuario(){
        
    }

    public Usuario(int cedula, String name, String last_name1, String last_name2, String email, String password) {
        this.cedula = cedula;
        this.name = name;
        this.last_name1 = last_name1;
        this.last_name2 = last_name2;
        this.email = email;
        this.password = password;
    }

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLast_name1() {
        return last_name1;
    }

    public void setLast_name1(String last_name1) {
        this.last_name1 = last_name1;
    }

    public String getLast_name2() {
        return last_name2;
    }

    public void setLast_name2(String last_name2) {
        this.last_name2 = last_name2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Usuario{" + "cedula=" + cedula + ", name=" + name + ", last_name1=" + last_name1 + ", last_name2=" + last_name2 + ", email=" + email + ", password=" + password + '}';
    }

 
    
}
