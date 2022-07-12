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
public class ProductQuery {
    
    public String get = "SELECT * FROM `news`";
    public String create = "INSERT INTO news (news_name, description, news_content, content_type, publish_date) VALUES (?, ?, ?, ?, ?)";
    public String getByName = "SELECT * FROM news where news_name LIKE ?";
    public String getById = "SELECT * FROM news where id = ?";   
    public String update = "UPDATE news SET news_name = ?, description = ?, news_content= ?, content_type = ?, publish_date = ? WHERE id = ?";
    public String delete = "DELETE FROM news WHERE id = ?";
}
 
