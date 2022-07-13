/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author DAVA
 */
public class WriterQuery {
    
    public String getByUsername = "SELECT * FROM writer WHERE username = ?";
    public String getByName = "SELECT * FROM writer where name LIKE ?";
    public String get = "SELECT * FROM `writer`";
}
