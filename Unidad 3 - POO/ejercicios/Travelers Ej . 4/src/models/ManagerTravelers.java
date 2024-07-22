/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author poldo
 */
public class ManagerTravelers {
    private List<Traveler> travelers;
    private Integer cant;
    
    public ManagerTravelers() {
        this.travelers = new ArrayList<>();
        this.cant = 0;
    }
    
    public Void addTraveler(Traveler t) {
        this.travelers.add(t);
        return null;
    }
    
    public List<Traveler> getTravelers() {
        return this.travelers;
    }
}
