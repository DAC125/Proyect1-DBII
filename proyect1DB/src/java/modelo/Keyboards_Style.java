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
public class Keyboards_Style {
    int id;
    String name;
    String brand;
    int price;
    int stock;
    String rgb;
    String wired_wirless;
    String color;
    String type;

    public Keyboards_Style() {
    }

    public Keyboards_Style(int id, String name, String brand, int price, int stock, String rgb, String wired_wirless, String color, String type) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.price = price;
        this.stock = stock;
        this.rgb = rgb;
        this.wired_wirless = wired_wirless;
        this.color = color;
        this.type = type;
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

    public String getRgb() {
        return rgb;
    }

    public void setRgb(String rgb) {
        this.rgb = rgb;
    }

    public String getWired_wirless() {
        return wired_wirless;
    }

    public void setWired_wirless(String wired_wirless) {
        this.wired_wirless = wired_wirless;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Keyboards_Style{" + "id=" + id + ", name=" + name + ", brand=" + brand + ", price=" + price + ", stock=" + stock + ", rgb=" + rgb + ", wired_wirless=" + wired_wirless + ", color=" + color + ", type=" + type + '}';
    }
    
    
}
