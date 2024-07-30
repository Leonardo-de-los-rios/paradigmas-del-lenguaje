public class HolaThread extends Thread {
    @Override
    public void run() {
        System.out.println("Hola desde un Hilo !!");
    }

    public static void main(String[] args) {
        (new HolaThread()).start();
    }
}