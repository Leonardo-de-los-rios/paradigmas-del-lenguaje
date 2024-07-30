public class Test {
    int x = 10;

    public static void metodoEstatico() {
        System.out.println(x);
    }

    private void metodoPrivado() {
        System.out.println(x);
    }

    public static void main(String[] args) {
        int x = 20;
        Test.metodoEstatico(); // Enlace estático
        Test obj = new Test();
        obj.metodoPrivado(); // Enlace estático
    }
}