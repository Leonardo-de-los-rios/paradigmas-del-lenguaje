package Streams;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class Main {

    public static void bajasCaloriasProcedural(List<Plato> menu) {
        List<Plato> bajasCalorias = new ArrayList<>();

        for (Plato obj : menu) {
            if (obj.getCalorias() < 400) {
                bajasCalorias.add(obj);
            }
        }

        Collections.sort(bajasCalorias, new Comparator<Plato>() {
            public int compare(Plato obj1, Plato obj2) {
                return Integer.compare(obj1.getCalorias(), obj2.getCalorias());
            }
        });

        bajasCalorias.forEach(obj -> System.out.println(obj));
    }

    public static void bajasCaloriasStream(List<Plato> menu) {
        List<String> bajasCalorias;
        bajasCalorias = menu.stream()
                .filter(d -> d.getCalorias() < 400)
                .sorted(Comparator.comparing(Plato::getCalorias))
                .map(Plato::toString)
                .collect(Collectors.toList());

        bajasCalorias.forEach(System.out::println);
    }

    public static void bajasCaloriasParallelStream(List<Plato> menu) {
        List<String> bajasCalorias;
        bajasCalorias = menu.parallelStream()
                .filter(d -> d.getCalorias() < 400)
                .sorted(Comparator.comparing(Plato::getCalorias))
                .map(Plato::toString)
                .collect(Collectors.toList());

        bajasCalorias.forEach(System.out::println);
    }

    public static void main(String[] args) {
        List<Plato> menu = Arrays.asList(
                new Plato("cerdo", false, 800, Plato.Type.CARNE),
                new Plato("bife", false, 700, Plato.Type.CARNE),
                new Plato("pollo", false, 400, Plato.Type.CARNE),
                new Plato("papas fritas", true, 530, Plato.Type.OTRO),
                new Plato("arroz", true, 350, Plato.Type.OTRO),
                new Plato("fruta de temporada", true, 120, Plato.Type.OTRO),
                new Plato("pizza", true, 550, Plato.Type.PESCADO),
                new Plato("langostino", false, 300, Plato.Type.PESCADO),
                new Plato("salmon", false, 450, Plato.Type.PESCADO));

        System.out.println("Procedural: Platos bajos en calorias: ");
        bajasCaloriasProcedural(menu);

        System.out.println("\nStream: Platos bajos en calorias: ");
        bajasCaloriasStream(menu);

        System.out.println("\nParallel Stream: Platos bajos en calorias: ");
        bajasCaloriasParallelStream(menu);
    }
}
