package com.swlc.gadgetmart.backend.abansAPI.database;

import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;


public class DBConnection {

    private static DBConnection dbConnection;
    private final BasicDataSource ds;

    private DBConnection() {
        ds = new BasicDataSource();
        ds.setDriverClassName(com.swlc.gadgetmart.abansAPI.abansAPI.database.DatabaseConstants.DRIVER);
        ds.setUsername(com.swlc.gadgetmart.abansAPI.abansAPI.database.DatabaseConstants.USERNAME);
        ds.setPassword(com.swlc.gadgetmart.abansAPI.abansAPI.database.DatabaseConstants.PASSWORD);
        ds.setUrl(com.swlc.gadgetmart.abansAPI.abansAPI.database.DatabaseConstants.DB_URL);

    }

    public static synchronized DBConnection getDBConnection() throws Exception {
        if (dbConnection == null) {
            dbConnection = new DBConnection();
            return dbConnection;
        } else {
            return dbConnection;
        }
    }

    public Connection getConnection() throws Exception {
        return this.ds.getConnection();
    }
}
