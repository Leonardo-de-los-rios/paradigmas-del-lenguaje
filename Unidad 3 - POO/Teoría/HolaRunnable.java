public class HolaRunnable implements Runnable {
    @Override
    public void run() {
        System.out.println("Hola desde un hilo !!");
    }

    public static void main(String[] args) {
        (new Thread(new HolaRunnable())).start();
    }
}