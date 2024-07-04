/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package travelers;

import java.util.ArrayList;
import static java.util.Comparator.comparing;
import java.util.List;
import java.util.Objects;
import java.util.Scanner;
import static java.util.stream.Collectors.toList;
import models.ManagerTravelers;
import models.Traveler;

/**
 *
 * @author poldo
 */
public class main {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner in = new Scanner(System.in);
        Boolean continuar = true;
        ManagerTravelers manager = new ManagerTravelers();
        while (continuar) {
            System.out.println("---------------------------------");
            System.out.println("Menu de opciones.");
            System.out.println("1) Cargar Viajeros.");
            System.out.println("2) Mostrar los datos de los viajeros ordenados por la cantidad de millas.");
            System.out.println("3) Mostrar los nombres de los viajeros que tienen más de 200 millas.");
            System.out.println("4) Obtener el viajero que tiene más millas.");
            System.out.println("0) Salir.");
            System.out.println("Ingrese una opcion: ");
            Integer opt = in.nextInt();
            System.out.println("---------------------------------");
            switch (opt) {
                case 1 -> { 
                    Traveler traveler4 = new Traveler(4, "4444", "ger", "que pelota gerson", 777);
                    Traveler traveler2 = new Traveler(2, "2222", "inga", "onichan", 22);
                    Traveler traveler1 = new Traveler(1, "1111", "mati", "cerati", 11);
                    Traveler traveler3 = new Traveler(3, "3333", "lu", "uwu", 33);
                    manager.addTraveler(traveler1);
                    manager.addTraveler(traveler2);
                    manager.addTraveler(traveler3);
                    manager.addTraveler(traveler4);
                    System.out.println("Viajeros cargado correctamente!");
                }
                case 2 -> {
                    System.out.println("Opcion 2: Mostrar los datos de los viajeros ordenados por la cantidad de millas.");
                    List<Traveler> travelers = manager.getTravelers();
                    List<Traveler> t_sorted =   travelers.stream()
                                                .sorted(comparing(Traveler::getMiles))
                                                .collect(toList());
                    t_sorted.forEach(System.out::println);
                    break;
                }

                case 3 -> {
                    System.out.println("Opcion 3: Mostrar los nombres de los viajeros que tienen más de 200 millas.");
                    List<Traveler> travelers = manager.getTravelers();
                    List<String> t_names =  travelers.stream()
                                            .filter(t -> t.getMiles() > 200)
                                            .map(Traveler::getFirstName)
                                            .collect(toList());
                    t_names.forEach(System.out::println);
                    break;
                }
                case 4 -> {
                    System.out.println("Opcion 4: Obtener el viajero que tiene más millas.");
                    List<Traveler> travelers = manager.getTravelers();
                    int max =   travelers.stream()
                                .map(Traveler::getMiles)
                                .distinct()
                                .reduce(0, Integer::max);
                    
                    List<Traveler> best_travelers = travelers.stream()
                                                    .filter(t -> t.getMiles() == max)
                                                    .collect(toList());
                    best_travelers.forEach(System.out::println);
                    break;
                }
                case 0 -> continuar = false;
                default -> {
                    System.out.println("Opcion invalida.");
                    break;
                }
            }

        }
        
    }
    
}
