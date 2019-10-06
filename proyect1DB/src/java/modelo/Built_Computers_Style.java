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
public class Built_Computers_Style {
    int id;
    String name;
    String brand;
    int price;
    int stock;
    String type;
    String parts;

    public Built_Computers_Style() {
    }

    public Built_Computers_Style(int id, String name, String brand, int price, int stock, String type, String parts) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.price = price;
        this.stock = stock;
        this.type = type;
        this.parts = parts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getParts() {
        return parts;
    }

    public void setParts(String parts) {
        this.parts = parts;
    }

    @Override
    public String toString() {
        return "Built_Computers_Style{" + "id=" + id + ", name=" + name + ", brand=" + brand + ", price=" + price + ", stock=" + stock + ", type=" + type + ", parts=" + parts + '}';
    }
    
    
}
