/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package interfaces;

import java.util.List;
import models.Sportsman;

/**
 *
 * @author poldo
 */
public interface ISport {
    Integer QUANTITY_MIN = 2;
    
    Boolean form(List<Sportsman> members);
    
    void show();
    
    void numberSportsman();
}
