/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author poldo
 */
public class CustomExceptions {
    public static class NameSportsmanEmptyException extends Exception {
        public NameSportsmanEmptyException (String message) {
            super(message);
        }
    }
    
    public static class DniSportsmanEmptyException extends Exception {
        public DniSportsmanEmptyException (String message){
            super(message);
        }
    }
    
    public static class MinPlayersException extends Exception {
        public MinPlayersException(String message){
            super(message);
        }
    }
}
