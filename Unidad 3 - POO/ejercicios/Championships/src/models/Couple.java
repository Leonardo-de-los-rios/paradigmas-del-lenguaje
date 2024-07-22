/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import exceptions.CustomExceptions.MinPlayersException;
import interfaces.ISport;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

/**
 *
 * @author poldo
 */
public class Couple implements ISport {
    private List<Sportsman> sportsmans;
    
    
    public Couple () {
        this.sportsmans = new ArrayList<>();
    }
    
    public void setSportsmans (List<Sportsman> sportsmans) {
        this.sportsmans = sportsmans;
    }
       

    @Override
    public Boolean form(List<Sportsman> sportsmans) {
        if (sportsmans.size() == QUANTITY_MIN) {
            try {
                throw new MinPlayersException("La pareja no alcanza la cantidad minima de jugadores.");
            } catch (MinPlayersException ex) {
                java.util.logging.Logger.getLogger(Couple.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return sportsmans.size() == QUANTITY_MIN;
    }

    @Override
    public void show() {
        System.out.println(this.sportsmans.get(0) + " - " + this.sportsmans.get(1));
    }

    @Override
    public void numberSportsman() {
        int num = 1;
        for (Sportsman sportsman : this.sportsmans) {
            sportsman.setNum(num);
            num++;
        }
    }
    
}
