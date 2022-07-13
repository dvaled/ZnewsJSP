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
public class UserQuery {
    
    public String getByUsername = "SELECT * FROM admin WHERE username = ?";
    public String register = "INSERT INTO admin (name, username, password) VALUES (?, ?, ?)";
    
}
