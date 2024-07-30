public class Alcance {
	static int x = 10;
	
	public static void main(String[] args) {
		subprograma_1();
	}
	
	public static void subprograma_1() {
		int x = 20;
		subprograma_2();
	}
	
	public static void subprograma_2() {
		System.out.println(x);
	}
}