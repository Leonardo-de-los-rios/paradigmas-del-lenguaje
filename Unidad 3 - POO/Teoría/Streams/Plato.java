package Streams;

public class Plato {
    private final String nombre;
    private final boolean vegetariano;
    private final int calorias;
    private final Type tipo;

    public Plato(String nombre, boolean vegetariano, int calorias, Type tipo) {
        this.nombre = nombre;
        this.vegetariano = vegetariano;
        this.calorias = calorias;
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public boolean esVegetariano() {
        return vegetariano;
    }

    public int getCalorias() {
        return calorias;
    }

    public Type getTipo() {
        return tipo;
    }

    @Override
    public String toString() {
        return nombre;
    }

    public enum Type {
        CARNE, PESCADO, OTRO
    }
}