/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package travelers;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Scanner;
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
            System.out.println("1) Cargar Viajero.");
            System.out.println("2) Mostrar Viajero.");
            System.out.println("3) Consultar Cantidad de Millas.");
            System.out.println("4) Acumular Millas.");
            System.out.println("5) Canjear Millas.");
            System.out.println("6) Mejor Viajero.");
            System.out.println("0) Salir.");
            System.out.println("Ingrese una opcion: ");
            Integer opt = in.nextInt();
            System.out.println("---------------------------------");
            switch (opt) {
                case 1 -> { 
                    System.out.println("Opcion 1: Cargar Viajero.");
                    System.out.println("Datos del Nuevo Viajero.");
                    System.out.println("Ingrese el Numero: ");
                    Integer num = in.nextInt();
                    in.nextLine();
                    System.out.println("Ingrese el DNI: ");
                    String dni = in.nextLine();
                    System.out.println("Ingrese el Nombre: ");
                    String first_name = in.nextLine();
                    System.out.println("Ingrese el Apellido:");
                    String last_name = in.nextLine();
                    System.out.println("Ingrese la cantidad de Millas: ");
                    Integer miles = in.nextInt();
                    in.nextLine();

                    Traveler traveler = new Traveler(num, dni, first_name, last_name, miles);
                    manager.addTraveler(traveler);
                    System.out.println("Viajero cargado correctamente!");
                }
                case 2 -> {
                    System.out.println("Opcion 2: Mostrar Viajero.");
                    System.out.println("Ingrese el Numero del Viajero: ");
                    Integer num = in.nextInt();
                    in.nextLine();
                    
                    List<Traveler> travelers = manager.getTravelers();
                    Integer i = 0;
                    while (i < travelers.size()) {
                        Traveler traveler = travelers.get(i);
                        if (Objects.equals(traveler.getNum(), num)) {
                            System.out.println("Datos del Viajero: ");
                            System.out.println(traveler.toString());
                            break;
                        } else {
                            i += 1;
                        }
                    }
                    if (Objects.equals(i, travelers.size())){
                        System.out.println("No se encontro el Viajero con numero: " + num + ".");
                    }
                    break;
                }
                case 3 -> {
                    System.out.println("Opcion 3: Consultar Cantidad de Millas.");
                    System.out.println("Ingrese el DNI del Viajero: ");
                    in.nextLine();
                    String dni = in.nextLine();
                    
                    List<Traveler> travelers = manager.getTravelers();
                    Integer i = 0;
                    while (i < travelers.size()) {
                        Traveler traveler = travelers.get(i);
                        if (Objects.equals(traveler.getDni(), dni)) {
                            System.out.println("Cantidad de Millas: " + traveler.getMiles() + ".");
                            break;
                        } else {
                            i += 1;
                        }
                    }
                    if (Objects.equals(i, travelers.size())){
                        System.out.println("No se encontro el Viajero con DNI: " + dni + ".");
                    }
                    break;
                }
                case 4 -> {
                    System.out.println("Opcion 4: Acumular Millas.");
                    System.out.println("Ingrese el DNI del Viajero: ");
                    in.nextLine();
                    String dni = in.nextLine();
                    System.out.println("Ingrese las Millas a acumular: ");
                    Integer miles = in.nextInt();
                    in.nextLine();
                    
                    List<Traveler> travelers = manager.getTravelers();
                    Integer i = 0;
                    while (i < travelers.size()) {
                        Traveler traveler = travelers.get(i);
                        if (Objects.equals(traveler.getDni(), dni)) {
                            System.out.println("Nueva cantidad de Millas: " + traveler.acumMiles(miles) + ".");
                            break;
                        } else {
                            i += 1;
                        }
                    }
                    if (Objects.equals(i, travelers.size())){
                        System.out.println("No se encontro el Viajero con DNI: " + dni + ".");
                    }                    
                    break;
                }
                case 5 -> {
                    System.out.println("Opcion 5: Canjear Millas.");
                    System.out.println("Ingrese el DNI del Viajero: ");
                    in.nextLine();
                    String dni = in.nextLine();
                    System.out.println("Ingrese las Millas a canjear: ");
                    Integer miles = in.nextInt();
                    in.nextLine();
                    
                    List<Traveler> travelers = manager.getTravelers();
                    Integer i = 0;
                    while (i < travelers.size()) {
                        Traveler traveler = travelers.get(i);
                        if (Objects.equals(traveler.getDni(), dni)) {
                            if (traveler.getMiles() >= miles) {
                                traveler.redeemMiles(miles);
                                System.out.println("Cantidad de Millas: " + traveler.getMiles() + ".");
                            } else {
                                System.out.println("La cantidad de millas ingresadas es mayor a " + traveler.getMiles());
                            }
                            break;
                        } else {
                            i += 1;
                        }
                    }
                    if (Objects.equals(i, travelers.size())){
                        System.out.println("No se encontro el Viajero con DNI: " + dni + ".");
                    }
                    break;
                }
                case 6 -> {
                    System.out.println("Opcion 6: Mejor Viajero.");
                    List<Traveler> travelers = manager.getTravelers();
                    Integer i = 0;
                    Integer maxMiles = 0;
                    List<Traveler> bestTravelers = new ArrayList<>();
                    while (i < travelers.size()) {
                        Traveler traveler = travelers.get(i);
                        if (traveler.getMiles() >= maxMiles){
                            if (traveler.getMiles() > maxMiles){
                                maxMiles = traveler.getMiles();
                                bestTravelers.clear();
                            }
                            bestTravelers.add(traveler);
                        } else {
                            i += 1;
                        }
                    }
                    if (bestTravelers.isEmpty()){
                        System.out.println("No hay mejores viajeros.");
                    } else {
                        for (Traveler traveler : bestTravelers){
                            System.out.println(traveler.toString());
                        }
                    }
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
