/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Helper.StringHelper;
import Model.ProductModel;
import Query.ProductQuery;
import java.sql.ResultSet;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author DAVA
 */
public class ProductController extends BaseController {
    
    ProductQuery query = new ProductQuery();
    
    public ResultSet get() {
        String sql = this.query.get;
        return this.get(sql);
    }
    
    public boolean create(ProductModel model) throws ParseException {
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getDescription());
        map.put(3, model.getNewsContent());
        map.put(4, model.getType());
        map.put(5, model.getPublish());
        
        String sql = this.query.create;
        
        return this.preparedStatement(map, sql);
    }
    
    public ResultSet getByName(String news_name) {
        String sql = this.query.getByName;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, StringHelper.parseLikeQuery(news_name));
        
        return this.getWithParameter(map, sql);
    }
    
    public ResultSet getById(String id) {
        String sql = this.query.getById;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, id);
        
        return this.getWithParameter(map, sql);
    }
    
    public boolean update(String id, ProductModel model) throws ParseException {
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getDescription());
        map.put(3, model.getNewsContent());
        map.put(4, model.getType());
        map.put(5, model.getPublish());
        map.put(6, id);
        
        String sql = this.query.update;
        
        return this.preparedStatement(map, sql);
    }
    
    public boolean delete(String id) throws ParseException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, id);
        
        String sql = this.query.delete;
        return this.preparedStatement(map, sql);
    }
    
}
