/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author poldo
 */
public class Traveler {
    private Integer num;
    private String dni;
    private String firstName;    
    private String lastName;
    private Integer miles;
    
    public Traveler(Integer num, String dni, String first_name, String last_name, Integer miles) {
        this.num = num;
        this.dni = dni;
        this.firstName = first_name;
        this.lastName = last_name;
        this.miles = miles;
    }
    
    public Integer getNum() {
        return this.num;
    }
    
    public Void setNum(Integer num) {
        this.num = num;
        return null;
    }
    
    public String getDni() {
        return this.dni;
    }
    
    public Void setDni(String dni) {
        this.dni = dni;
        return null;
    }
    
    public String getFirstName() {
        return this.firstName;
    }
    
    public Void setFirstName(String firstName) {
        this.firstName = firstName;
        return null;
    }
    
    public String getLastName() {
        return this.lastName;
    }
    
    public Void setLastName(String lastName) {
        this.lastName = lastName;
        return null;
    }
    
    public Integer getMiles() {
        return this.miles;
    }
    
    public Void setMiles(Integer miles) {
        this.miles = miles;
        return null;
    }
    
    public Integer acumMiles(Integer miles) {
        this.miles += miles;
        return this.miles;
    }
    
    public Integer redeemMiles (Integer miles) {
        this.miles -= miles;
        return this.miles;
    }
    
    @Override
    public String toString() {
        return "Numero: " + num +
               "\nDNI: " + dni +
               "\nNombre: " + firstName +
               "\nApellido: " + lastName +
               "\nMillas: " + miles;
    }
}
