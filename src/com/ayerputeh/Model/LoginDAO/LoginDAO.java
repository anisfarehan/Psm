package com.ayerputeh.Model.LoginDAO;

import com.ayerputeh.GlobalServlet.DBConnectionManager;

import java.sql.*;
import java.util.List;

/**
 * Created by Hp on 01-Apr-17.
 * <p>
 * https://www.tutorialspoint.com/design_pattern/data_access_object_pattern.htm
 * <p>
 * STEP 1: Create Value Object.
 */
public class LoginDAO extends DBConnectionManager {
    protected transient boolean isNewRecord = true;
    protected transient String tableName = "login";

    /******************************
     * TABLE COLUMN NAME
     *******************************/
    private  int id;
    public String number_ic, password, status, nama, guru, penyelia;

    /******************************
     * DATABASE VARIABLES
     *******************************/
    //list is working as a database
    private transient List<LoginDAO> logins;
    private transient Connection conn = getConnection();
    private transient Statement stmt = null;
    private transient PreparedStatement preparedStmt = null;
    private transient ResultSet rs = null;

    public LoginDAO() {
        this.isNewRecord = true;
    }

    /******************************
     * ATTRIBUTES/COLUMN SETTER & GETTER
     *******************************/
    public void setNRIC(String NRIC) {
        this.number_ic = NRIC;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getID() {
        return this.id;
    }

    public String getNRIC() {
        return this.number_ic;
    }

    public String getPassword() {
        return this.password;
    }

    public String getStatus() {
        return this.status;
    }


    /********************************
     *
     * IMPLEMENT INTERFACE
     *
     * CRUD Operations
     *********************************/

    /*
    * INSERT / UPDATE
    * */
    public void save() {
        if (this.isNewRecord) {//INSERT
            this.create();
        } else {//UPDATE
            this.update();
        }
    }

    /*
    * INSERT
    * */
    public void create() {
        this.isNewRecord = true;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            // create the mysql insert preparedstatement
            this.preparedStmt = this.conn.prepareStatement("INSERT INTO " + this.tableName + " (number_ic, password, status) VALUES (?, ?, ?)");
            this.preparedStmt.setString(1, this.number_ic);
            this.preparedStmt.setString(2, this.password);
            this.preparedStmt.setString(3, this.status);

            // execute the preparedstatement
            this.preparedStmt.execute();
            this.conn.close();

            System.out.print("DATA CREATED FROM " + this.tableName);
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }
    }

    /*
    * READ
    * */
    //retrive single login from the database
    public LoginDAO read(int id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE id=? LIMIT 1");
            ps.setInt(1, id);
            this.rs = ps.executeQuery();

            LoginDAO loginDAO = null;
            while (rs.next()) {
                loginDAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return loginDAO;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }

    }

    /*
    * UPDATE
    * */
    public void update() {
        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            this.preparedStmt = this.conn.prepareStatement("UPDATE " + this.tableName + " SET number_ic=?, password=?, status=? WHERE id=?");
            this.preparedStmt.setString(1, this.number_ic);
            this.preparedStmt.setString(2, this.password);
            this.preparedStmt.setString(3, this.status);
            this.preparedStmt.setInt(4, this.id);

            // execute the preparedstatement
            this.preparedStmt.executeUpdate();
            this.conn.close();
            System.out.print("DATA UPDATED FROM " + this.tableName);
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }
    }

    /*
    * DELETE
    * */
    public void delete() {
        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            this.preparedStmt = this.conn.prepareStatement("DELETE FROM " + this.tableName + " WHERE id = ?");
            this.preparedStmt.setInt(1, this.id);

            // execute the preparedstatement
            preparedStmt.execute();
            this.conn.close();
            System.out.print("DATA DELETED FROM " + this.tableName);
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }

    }

    //retrive single login from the database
    public LoginDAO findByNRIC(String NRIC) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE number_ic=? LIMIT 1");
            ps.setString(1, NRIC);
            this.rs = ps.executeQuery();

            LoginDAO loginDAO = null;
            while (rs.next()) {
                loginDAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return loginDAO;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }

    }

    //retrive list of logins from the database
    public List<LoginDAO> getAllLogins() {
        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName);
            this.rs = ps.executeQuery();

            while (rs.next()) {
                this.logins.add(this.processRow(rs));
            }

            this.conn.close();

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return this.logins;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }
    }

    protected LoginDAO processRow(ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.number_ic = rs.getString("number_ic");
        this.password = rs.getString("password");
        this.status = rs.getString("status");
        return this;
    }
}
