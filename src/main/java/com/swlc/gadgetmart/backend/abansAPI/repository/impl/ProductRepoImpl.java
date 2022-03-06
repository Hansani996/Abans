package com.swlc.gadgetmart.backend.abansAPI.repository.impl;


import com.swlc.gadgetmart.backend.abansAPI.database.DBConnection;
import com.swlc.gadgetmart.backend.abansAPI.dto.productDto;
import com.swlc.gadgetmart.backend.abansAPI.repository.ProductRepo;
import org.apache.commons.dbutils.DbUtils;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductRepoImpl implements ProductRepo {

    private static Connection connection;
    private static PreparedStatement preparedStatement;
    private static ResultSet resultSet;



    @Override
    public List<productDto> getAllProducts() throws Exception {
        connection = DBConnection.getDBConnection().getConnection();
        String SQL = "select i.item_id,i.name,i.description,i.image,i.price,i.deliveryCost,b.brand_name,c.category_name,i.discount,i.shop,i.warranty,i.soldOut from item i,brand b,category c where i.brand=b.brand_id && i.category=c.category_id";

        preparedStatement = connection.prepareStatement(SQL);
        resultSet = preparedStatement.executeQuery();
        List<productDto> items = new ArrayList<>();
        while (resultSet.next()) {
            productDto products = new productDto();
            products.setId(resultSet.getString(1));
            products.setName(resultSet.getString(2));
            products.setDescription(resultSet.getString(3));
            products.setImage(resultSet.getString(4));
            products.setPrice(resultSet.getDouble(5));
            products.setDeliveryCost(resultSet.getDouble(6));
            products.setBrand(resultSet.getString(7));
            products.setCategory(resultSet.getString(8));
            products.setDiscount(resultSet.getInt(9));
            products.setShop(resultSet.getString(10));
            products.setWarranty(resultSet.getString(11));
            products.setSoldOut(resultSet.getBoolean(12));
            items.add(products);
        }
        closeConnection();
        return items;
    }

    private void closeConnection() {
        try {
            DbUtils.closeQuietly(resultSet);
            DbUtils.closeQuietly(preparedStatement);
            DbUtils.close(connection);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }


}
