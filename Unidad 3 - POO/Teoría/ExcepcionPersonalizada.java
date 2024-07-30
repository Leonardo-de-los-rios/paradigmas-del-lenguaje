import java.util.Scanner;

class MiExcepcion extends Exception {
    public MiExcepcion() {
        super();
    }

    public MiExcepcion(String mensaje) {
        super(mensaje);
    }

    public MiExcepcion(Throwable causa) {
        super(causa);
    }

    public MiExcepcion(String mensaje, Throwable causa) {
        super(mensaje, causa);
    }
}

public class ExcepcionPersonalizada {

    public static void joven(int edad) throws MiExcepcion {
        if (edad < 18 || edad > 24) {
            throw new MiExcepcion("No cumple con la edad requerida");
        }
    }

    public static void main(String[] args) {
        int edad;
        try (Scanner scan = new Scanner(System.in)) {
            String seguir = "S";
            
            while (seguir.compareTo("S") == 0) {
                try {
                    System.out.print("Ingrese edad: ");
                    edad = scan.nextInt();
                    joven(edad);
                } catch (MiExcepcion e) {
                    System.err.println("Error: " + e.getMessage());
                } finally {
                    System.out.print("Ingresar otro dato (S/N): ");
                    seguir = scan.next().toUpperCase();
                }
            }
        }
    }
}