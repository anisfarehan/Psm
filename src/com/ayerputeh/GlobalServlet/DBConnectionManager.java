package com.ayerputeh.GlobalServlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Driver;

/**
 * Created by  on 01-Apr-17.
 * <p>
 * http://stackoverflow.com/questions/10915375/create-a-class-to-connect-to-any-database-using-jdbc
 */
public class DBConnectionManager {
    private static String url = "jdbc:mysql://localhost:3306/ayerputeh";
    private static String driverName = "com.mysql.jdbc.Driver";
    private static String username = "root";
    private static String password = "";
    private static Connection con;

    public DBConnectionManager() {

    }

    public static Connection getConnection() {
        try {
            Class.forName(driverName);
            try {
                con = DriverManager.getConnection(url, username, password);
                System.out.println("Database Connection Success.");
            } catch (SQLException ex) {
                // log an exception. fro example:
                System.out.println("Failed to create the database connection.");
                System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            // log an exception. for example:
            System.out.println("Driver not found.");
        }
        return con;
    }
}
