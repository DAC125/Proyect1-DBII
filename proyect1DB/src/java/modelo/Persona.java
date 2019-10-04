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
public class Persona {
    String id;
    String carne;
    String nombre;
    String telefono;
    
    public Persona(){
        
    }
    
    public Persona(String id, String carne, String nombre, String telefono){
        this.id = id;
        this.carne = carne;
        this.nombre = nombre;
        this.telefono = telefono;
        
    }

    
    
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public String getCarne() {
        return carne;
    }

    public void setCarne(String carne) {
        this.carne = carne;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "persona{" + "id=" + id + ", carne=" + carne + ", nombre=" + nombre + ", telefono=" + telefono + '}';
    }
 
    
    
    
    

}
