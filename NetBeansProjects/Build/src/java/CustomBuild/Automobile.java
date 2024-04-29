/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CustomBuild;

/**
 *
 * @author Gennette Sanders
 */
public class Automobile {
    private String model;
    private String year;
    private String doors;
    private String color;
    
    public Automobile() {
        model = "";
        year = "";
        doors = "";
        color = "";
    }
    
    public Automobile(String model, String year, String doors,
        String color) {
        this.model = model;
        this.year = year;
        this.doors = doors;
        this.color = color;
    }
    
    public void setModel(String model) {
        this.model = model;
    }
    
    public String getModel() {
        return model;
    }
    
    public void setYear(String year) {
        this.year = year;
    }
    
    public String getYear() {
        return year;
    }
    
    public void setDoors(String doors) {
        this.doors = doors;
    }
    
    public String getDoors() {
        return doors;
    }
    
    public void setColor(String color) {
        this.color = color;
    }
    
    public String getColor() {
        return color;
    }
    
}
