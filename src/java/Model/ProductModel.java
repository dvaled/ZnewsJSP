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
public class ProductModel {
    
    private String news_name;
    private String description;
    private String news_content;
    private String content_type;
    private String publish_date;

    public void setPublish(String publish_date) {
        String[] splitted = publish_date.split("/");
        publish_date = splitted[2] + "-" + splitted[0] + "-" + splitted[1];
        
        this.publish_date = publish_date;
    }

    public String getPublish() {
        return publish_date;
    }

    public void setName(String news_name) {
        this.news_name = news_name;
    }

    public String getName() {
        return news_name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setNewsContent(String news_content) {
        this.news_content = news_content;
    }

    public String getNewsContent() {
        return news_content;
    }

    public void setType(String content_type) {
        this.content_type = content_type;
    }

    public String getType() {
        return content_type;
    } 
    
}
    

