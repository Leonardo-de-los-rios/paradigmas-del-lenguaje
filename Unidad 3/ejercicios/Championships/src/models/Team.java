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
import java.util.logging.Logger;

/**
 *
 * @author poldo
 */
public class Team implements ISport{
    private String name;
    private List<Sportsman> sportsmans;
    
    public Team (String name) {
        this.name = name;
        this.sportsmans = new ArrayList<>();
    }
    
    public void setName (String name) {
        this.name = name;
    }
    
    public String getName () {
        return this.name;
    }
    
    public void setSportsmans (List<Sportsman> sportsmans) {
        this.sportsmans = sportsmans;
    }

    @Override
    public Boolean form(List<Sportsman> sportsmans) {
        if (sportsmans.size() < QUANTITY_MIN){
            try {
                throw new MinPlayersException("El equipo no llega a la cantidsd mínima de jugadores.");
            } catch (MinPlayersException ex) {
                Logger.getLogger(Team.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return sportsmans.size() >= QUANTITY_MIN;
    }

    @Override
    public void show() {
        System.out.println(this.name);
        for (Sportsman sportsman : this.sportsmans) {
            System.out.println(sportsman.toString());
        }
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
