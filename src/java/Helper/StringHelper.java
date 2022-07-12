/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helper;

/**
 *
 * @author DAVA
 */
public class StringHelper {
    
    public static String parseLikeQuery(String query) {
        return "%" + query + "%";
    }
    
    public static String modifyDateIntoDatepicker(String publish_date) {
        String[] splitted = publish_date.split("-");
        publish_date = splitted[1] + "/" + splitted[2] + "/" +  splitted[0] ;
        
        return publish_date;
    }
    
}
