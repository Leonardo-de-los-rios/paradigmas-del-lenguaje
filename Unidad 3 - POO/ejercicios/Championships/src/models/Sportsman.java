/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author poldo
 */
public class Sportsman {
    public String name;
    public String dni;
    public Integer num;
    
    public Sportsman (String name, String dni, Integer num) {
        this(name, dni);
        this.num = num;
    }
    
    public Sportsman (String name, String dni) {
        this.name = name;
        this.dni = dni;
        this.num = 0;
    }
    
    public String getName () {
        return this.name;
    }
    
    public void setName (String name) {
        this.name = name;
    }
    
    public String getDni () {
        return this.dni;
    }
    
    public void setDni (String dni) {
        this.dni = dni;
    }
    
    public Integer getNum () {
        return this.num;
    }
    
    public void setNum (Integer num) {
        this.num = num;
    }
    
    
    @Override
    public String toString() {
        return "Jugador N " + this.num + ": " + this.name;
    }
}
