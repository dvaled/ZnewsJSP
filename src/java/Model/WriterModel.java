/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author DAVA
 */
public class WriterModel {
    
    private String name;
    private String bagian;
    private String username;
    private String password;
    private String registerd_by_name;
    
    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
    
    public void setBagian(String bagian) {
        this.bagian = bagian;
    }

    public String getBagian() {
        return bagian;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
    
    public void setRegisterdByName(String registerd_by_name) {
        this.registerd_by_name = registerd_by_name;
    }

    public String getRegisterdByName() {
        return registerd_by_name;
    }
    
}
