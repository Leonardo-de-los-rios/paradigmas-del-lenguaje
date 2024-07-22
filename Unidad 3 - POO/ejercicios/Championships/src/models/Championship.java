/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import exceptions.CustomExceptions.DniSportsmanEmptyException;
import exceptions.CustomExceptions.NameSportsmanEmptyException;
import interfaces.ISport;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author poldo
 */
public class Championship {
    public static final String SEPARATOR = ",";
    private static List<Team> teams;
    private List<Couple> couples;
    
    public Championship () {
        this.teams = new ArrayList<>();
        this.couples = new ArrayList<>();
    }
    
    public void addTeam (Team t) {
        this.teams.add(t);
    }
    
    public List<Team> getTeams () {
        return this.teams;
    }
    
    public List<Couple> getCouples () {
        return this.couples;
    }
    
    public static List<Sportsman> readFile(String name_file)throws IOException, NameSportsmanEmptyException, DniSportsmanEmptyException{
        BufferedReader bufferLectura = null;
        List<Sportsman> data = new ArrayList<>();
        try {
            bufferLectura = new BufferedReader(new FileReader(name_file));
            String linea;                  

            while ((linea=bufferLectura.readLine()) != null) {
             // Sepapar la linea leída con el separador definido previamente
             String[] campos = linea.split(SEPARATOR);
             String name_sportsman = campos[0];
             String dni_sportsman = campos[1];
             
             if (name_sportsman.isEmpty()) {
                throw new NameSportsmanEmptyException("El nombre del deportista es vacío.");
             }
             
             if (dni_sportsman.isEmpty()) {
                throw new DniSportsmanEmptyException("El DNI del deportista es vacío.");
             }
             
             Sportsman d = new Sportsman(name_sportsman,campos[1]);
             data.add(d);
            }
        } 
        catch (IOException e) {
            System.out.println(e.getMessage());
        }
        finally {
         // Cierro el buffer de lectura
         if (bufferLectura != null) {
             bufferLectura.close();
         }
        }
        return data;
    }
    /**
    * Crea los equipos con los datos pasados como parámetro
     * @param sportsmans lista con todos los deportistas inscriptos
     * @param quantity_players cantidad de jugadores que conforman un equipo
     * @return una lista de equipos
    */
    public static List<ISport> createTeam(List<Sportsman> sportsmans, int quantity_players) {
        int num_team = 1;
        List<ISport> sports = new ArrayList<>();
        int y;
        
        for (int i = 0; i < sportsmans.size(); i += y) {
            List<Sportsman> players = new ArrayList<>();
            
            y = 0;
            while (i + y < sportsmans.size() && y < quantity_players) {
                players.add(sportsmans.get(i + y));
                y++;
            }
            
            Team team = new Team("Fulbol - Equipo N " + num_team);
            if (team.form(players)) {
                team.setSportsmans(players);
                sports.add(team);
                num_team++;
            }
        }
        return sports;
    }
    /**
    Crea los equipos con los datos pasados como parámetro
     * @param sportsmans es una lista con todos los deportitas inscriptos
     * @return una lista de Parejas formadas
    */
    public static List<ISport> createCouples(List<Sportsman> sportsmans){
        List<ISport> sports = new ArrayList();
        int y = 0;
        
        for (int i = 0; i < sportsmans.size(); i += y) {
            List<Sportsman> players = new ArrayList<>();
            
            y = 0;
            while (i + y < sportsmans.size() && y < 2) {
                players.add(sportsmans.get(i + y));
                y++;
            }
            
            Couple couple = new Couple();
            if (couple.form(players)) {
                couple.setSportsmans(players);
                sports.add(couple);
            }
        }
        return sports;
    }
    /**
    * Numera cada integrante del equipo o de la pareja
     * @param sports 
    */
    public static void numerate(List<ISport> sports){
        for (ISport sport : sports) {
            sport.numberSportsman();
        }
    }
    /**
    * Muestra los datos de cada equipo o de cada pareja
     * @param sports
    */
    public static void show(List<ISport> sports){
        for (ISport sport : sports) {
            sport.show();
        }
    }
}
