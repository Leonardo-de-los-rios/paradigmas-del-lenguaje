/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package championships;

import exceptions.CustomExceptions;
import interfaces.ISport;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;
import models.Championship;
import models.Sportsman;

/**
 *
 * @author poldo
 */
public class main {

    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     * @throws exceptions.CustomExceptions.NameSportsmanEmptyException
     * @throws exceptions.CustomExceptions.DniSportsmanEmptyException
     */
    public static void main(String[] args) throws IOException, CustomExceptions.NameSportsmanEmptyException, CustomExceptions.DniSportsmanEmptyException {
        // TODO code application logic here
        String path_file_soccer = "C:\\FACULTAD\\4° Año\\1° Semestre\\Paradigmas del Lenguaje\\3- Programación Orientada a Objetos\\ejercicios\\Championships\\files\\inscriptosFutbol.csv";
        List<Sportsman> data_soccer = Championship.readFile(path_file_soccer);
        Scanner in = new Scanner(System.in);
        
        System.out.println("Cantidad de jugadores Equipo Futsal(minimo 2): ");
        Integer quantity_players_football = in.nextInt();
        
        
        List<ISport> teams_football = Championship.createTeam(data_soccer, quantity_players_football);
        Championship.numerate(teams_football);
        System.out.println("Equipos de Futsal:");
        Championship.show(teams_football);
        System.out.println("Los equipos se cargaron correctamente.");
        
        
        
        
        String path_file_pin_pon = "C:\\FACULTAD\\4° Año\\1° Semestre\\Paradigmas del Lenguaje\\3- Programación Orientada a Objetos\\ejercicios\\Championships\\files\\inscriptosPinPon.csv";
        List<Sportsman> data_pin_pon = Championship.readFile(path_file_pin_pon);
        
        List<ISport> couples_pin_pon = Championship.createCouples(data_pin_pon);
        Championship.numerate(couples_pin_pon);
        System.out.println("Parejas de Pin Pon:");
        Championship.show(couples_pin_pon);
        System.out.println("Las parejas se cargaron correctamente.");
    }
    
}
